import dotenv
from langchain.chat_models import AzureChatOpenAI
from langchain.utilities import SQLDatabase
from langchain_experimental.sql import SQLDatabaseChain
from langchain.chains import create_sql_query_chain


OPENAI_API_TYPE = dotenv.get_key(".env","OPENAI_API_TYPE")
OPENAI_API_BASE = dotenv.get_key(".env","OPENAI_API_BASE")
OPENAI_API_KEY = dotenv.get_key(".env","OPENAI_API_KEY")
OPENAI_API_VERSION = dotenv.get_key(".env","OPENAI_API_VERSION")

llm = AzureChatOpenAI(
    openai_api_base=OPENAI_API_BASE,
    openai_api_version=OPENAI_API_VERSION,
    openai_api_key=OPENAI_API_KEY,
    openai_api_type=OPENAI_API_TYPE,
    deployment_name="BFSLAB16K",
    temperature=0
)

db = SQLDatabase.from_uri("mysql://oly:root@localhost:3306/trading_system_db")


def get_query(text):
    db_query_chain = create_sql_query_chain(llm, db)
    response = db_query_chain.invoke({"question":text})
    return response

def get_response(text):
    db_response_chain = SQLDatabaseChain.from_llm(llm, db, verbose=True)
    response = db_response_chain(text)
    return response['result']
#
# response1 =  get_query("Get my database name")
# response2 =  get_response("Provide Database Schema of the database")
#
# print("----------------------------")
# print(response1)
# print("----------------------------")
# print(response2)