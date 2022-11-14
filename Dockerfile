FROM python:3.8


COPY ./requirements.txt /app/addemp/requirements.txt
WORKDIR /app/addemp
RUN pip install -r requirements.txt

COPY ./AddEmp.py /app/addemp/AddEmp.py
COPY ./templates/AddEmp.html /app/addemp/templates/AddEmp.html
COPY ./templates/AddEmpOutput.html /app/addemp/templates/AddEmpOutput.html

EXPOSE 80

ENTRYPOINT ["python", "AddEmp.py"]
