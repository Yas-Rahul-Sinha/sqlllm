import streamlit as st
from genAICall import get_query,get_response

st.title("SQL Generator")

# Initialize chat history
if "messages" not in st.session_state:
    st.session_state.messages = []

# Display chat messages from history on app rerun
for message in st.session_state.messages:
    with st.chat_message(message["role"]):
        st.markdown(message["content"])

# Accept user input
if prompt := st.chat_input("How can I help you?"):
    # Add user message to chat history
    st.session_state.messages.append({"role": "user", "content": prompt})
    # Display user message in chat message container
    with st.chat_message("user"):
        st.write(prompt)
    # Display assistant response in chat message container
    
    response = get_query(prompt) + "\n\n" + get_response(prompt) 
    with st.chat_message("assistant"):
        st.write(response)
        st.session_state.messages.append({"role": "assistant", "content": response})