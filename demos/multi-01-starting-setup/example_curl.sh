#!/bin/sh

curl -X POST http://localhost:5001/predict \
  -H "Content-Type: application/json" \
  -d '[
    {"id":1,"first_name":"Ivan","last_name":"Kuts"},
    {"id":2,"first_name":"Nataliia","last_name":"Varhich"},
    {"id":3,"first_name":"John","last_name":"Smith"},
    {"id":4,"first_name":"Maria","last_name":"Garcia"},
    {"id":5,"first_name":"Ahmed","last_name":"Hassan"},
    {"id":6,"first_name":"Li","last_name":"Wang"},
    {"id":7,"first_name":"Elena","last_name":"Ivanova"},
    {"id":8,"first_name":"David","last_name":"Brown"},
    {"id":9,"first_name":"Fatima","last_name":"Ali"},
    {"id":10,"first_name":"Carlos","last_name":"Santos"},
    {"id":11,"first_name":"Anna","last_name":"Kowalski"},
    {"id":12,"first_name":"Tom","last_name":"Wilson"},
    {"id":13,"first_name":"Sofia","last_name":"Rossi"},
    {"id":14,"first_name":"Mikhail","last_name":"Petrov"},
    {"id":15,"first_name":"Sara","last_name":"Johansson"},
    {"id":16,"first_name":"Hiroshi","last_name":"Tanaka"},
    {"id":17,"first_name":"Olga","last_name":"Novak"},
    {"id":18,"first_name":"George","last_name":"Anderson"},
    {"id":19,"first_name":"Nina","last_name":"Popescu"},
    {"id":20,"first_name":"Mohammed","last_name":"Khan"}
  ]'
