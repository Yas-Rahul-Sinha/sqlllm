
import mysql.connector
from flask import Flask, request, jsonify
import json
from genAICall import get_query,get_response

# Flask constructor takes the name of
# current module (__name__) as argument.
app = Flask(__name__)

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="root",
  password="password",
    database="poc",
)
# The route() function of the Flask class is a decorator,
# which tells the application which URL should call
# the associated function.
@app.route('/')
def test():
    return "Working"

@app.route('/getTableStructure/<table_name>')
# ‘/’ URL is bound with hello_world() function.
def get_table_structure(table_name):
    # print(table_name)
    cursor = mydb.cursor(dictionary=True)
    try:
        cursor.execute(f"DESCRIBE {table_name}")
        indexList = cursor.fetchall()
        for field in indexList:
            field['Type'] = str(field["Type"])
        return indexList
    except Exception as e:
        return 'No table with such name exists'

@app.route('/getColumnNames/<table_name>')
def get_column_names(table_name):
    res = {"columns":[]}
    cursor = mydb.cursor(dictionary=True)
    cursor.execute(f"DESCRIBE {table_name}")
    indexList = cursor.fetchall()
    for field in indexList:
        res["columns"].append(field["Field"])
    return res

@app.route('/getQuery',methods=['POST'])
def get_Query():
    raw_data = request.data
    data_str = raw_data.decode('utf-8')
    json_data = json.loads(data_str)
    response = get_query(json_data["question"])
    print(response)
    return response

@app.route('/getResponse',methods=['POST'])
def get_Response():
    raw_data = request.data
    data_str = raw_data.decode('utf-8')
    json_data = json.loads(data_str)
    response = get_response(json_data["question"])
    print(response)
    return response

@app.route('/getBoth',methods=['POST'])
def get_both():
    raw_data = request.data
    data_str = raw_data.decode('utf-8')
    json_data = json.loads(data_str)
    response1 =  get_query(json_data["question"])
    response2 =  get_response(json_data["question"])
    print(response1 + "\n\n" + response2)
    return response1 + "\n" + response2


# main driver function
if __name__ == '__main__':
    # run() method of Flask class runs the application
    # on the local development server.
    app.run()