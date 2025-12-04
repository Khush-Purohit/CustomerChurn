FROM python:3.11-slim AS base

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./
# COPY templates ./templates
# COPY static ./static
COPY index.html ./
COPY style.css ./
COPY random_forest_model.pkl ./
COPY decision_tree_model.pkl ./

EXPOSE 5000

# PORT Number
ENV PORT=5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
