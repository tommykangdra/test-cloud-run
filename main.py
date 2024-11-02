def hello_world():
    print("hello world")


def add(x, y):
    return x + y


import streamlit as st

num1 = st.number_input("Num1")
num2 = st.number_input("Num2")

st.write("Result:")
st.write(add(num1, num2))
