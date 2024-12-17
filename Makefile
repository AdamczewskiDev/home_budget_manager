setup:
    pip install -r requirements.txt
    flask db init
    flask db migrate -m "Initial migration."
    flask db upgrade

run:
    gunicorn --bind 0.0.0.0:5000 wsgi:app

streamlit-run:
    streamlit run src/visualization/app.py
