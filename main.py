from fastapi import FastAPI
from modules import getIp

app = FastAPI()


@app.get("/")
def ipAdress():
    return getIp()
