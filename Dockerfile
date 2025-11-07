# Use the official Jupyter Notebook image (Python 3)
FROM jupyter/scipy-notebook:latest

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Install required Python libraries
RUN pip install --no-cache-dir \
    pandas \
    numpy \
    scikit-learn \
    matplotlib \
    seaborn

# Expose the notebook port
EXPOSE 8888

# Default command to run Jupyter
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]
