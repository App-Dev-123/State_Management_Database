import streamlit as st
import psycopg2
import pandas as pd

# Function to execute SQL queries
def execute_query(sql_query):
    conn = psycopg2.connect(
        host="localhost",
        port="5432",
        database="postgres",
        user="postgres",
        password="postgres"
    )
    cur = conn.cursor()
    cur.execute(sql_query)
    result = cur.fetchall()
    conn.close()
    return result,cur

def main():
    sql_query = st.text_area("Enter your SQL query", "")

    if st.button("Run"):
        # Execute the query
        result,cur = execute_query(sql_query)
        # Display the result using Pandas DataFrame
        if result:  # Check if result is not empty
            df = pd.DataFrame(result, columns=[desc[0] for desc in cur.description])
            st.dataframe(df)
        else:
            st.write("No results to display")

if __name__ == "__main__":
    main()
