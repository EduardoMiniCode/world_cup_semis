FROM islasgeci/base:1.0.0
RUN Rscript -e "install.packages(c('caret', 'pROC', 'worldfootballR'), repos='http://cran.rstudio.com')"
COPY . /workdir

# Si no necesitas Python, puedes eliminar todo lo siguiente:
# FROM python:3.11-slim
# WORKDIR /app
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt
# COPY . .
# EXPOSE 5000
# CMD ["python", "app.py"]