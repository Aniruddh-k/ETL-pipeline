#!/bin/bash
set -e

echo "✅ Setting up Apache Airflow..."

AIRFLOW_VERSION=2.8.1
PYTHON_VERSION="$(python --version | cut -d ' ' -f 2 | cut -d '.' -f 1,2)"
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"

pip install --upgrade pip setuptools wheel
pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"

echo "✅ Apache Airflow installed successfully!"
