FROM python:3.11-alpine

WORKDIR .

COPY requirements.txt .

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install --ignore-installed uvicorn==0.27.1
COPY . .
CMD ["uvicorn", "main:app","--host","0.0.0.0", "--port", "8000"]