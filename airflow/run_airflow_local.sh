#! /usr/bin/env bash

export AIRFLOW_HOME=~/airflow
mkdir -p $AIRFLOW_HOME
pushd $AIRFLOW_HOME

AIRFLOW_VERSION=2.5.0

source ~/venv/bin/activate
pip3 install "apache-airflow==${AIRFLOW_VERSION}"

airflow db init

airflow users create \
    --username admin \
    --firstname Peter \
    --lastname Parker \
    --role Admin \
    --email spiderman@superhero.org
