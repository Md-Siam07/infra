FROM jupyter/tensorflow-notebook:latest

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        unixodbc-dev \
        libpq-dev \
        graphviz \
        graphviz-dev \
        xdg-utils \
        gcc \
        g++ \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}

COPY packages.txt .

RUN pip install --no-cache-dir -r packages.txt \
    && rm packages.txt

RUN ipython profile create \
    && ipython --IPCompleter.use_jedi=False

COPY --chown=${NB_UID}:${NB_GID} start.py /home/mdsiam07/.ipython/profile_default/startup/start.py

# Install and configure JupyterLab extensions
RUN jupyter labextension install --no-build @krassowski/jupyterlab_go_to_definition \
    && mkdir -p /home/mdsiam07/.jupyter/lab/user-settings/@krassowski/jupyterlab-lsp \
    && echo '{"continuousHinting": true}' > /home/mdsiam07/.jupyter/lab/user-settings/@krassowski/jupyterlab-lsp/completion.jupyterlab-settings \
    && echo '{"ignoreMessagesPatterns": ["W293", "W391", "E302"]}' > /home/mdsiam07/.jupyter/lab/user-settings/@krassowski/jupyterlab-lsp/diagnostics.jupyterlab-settings \
    && jupyter lab build --dev-build=False --minimize=False \
    && jupyter lab clean \
    && rm -rf /home/mdsiam07/.cache/yarn