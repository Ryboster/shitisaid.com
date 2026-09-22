## This dockerimage builds a container used
## to run shitisaid.com, a free online transcripts amalgamator. 
## Super awesome. You need it!

## Whole container gets rebuilt with each update. 
## This increases the level of control.

## === RESPONSIBILITY CHART ====
## == POSTGRESQL == Storing user data ==
## == GUNICORN == Handling communication between sockets == 
## == NGINX == Handling in/outbound traffic ==
## == FAIL2BAN == Security - Timing out repeated offenders ==
## == CRON == automated actions (booting server, update checks, etc.) ==

### ===============================
### ===============================
# Expose a random port to the host machine. (>1023 && <100000)
# The host machine will redirect https (443) over to this port. http is redirected to https by NGINX.
#### ==== KEEP LINE 20 CLEAR ==== EXPOSE PORT INSERTED FROM OUTSIDE ====
EXPOSE 1337

## Base image. Nginx comes in free and mom told me to never refuse free things.
FROM ubuntu/nginx

# Permanent default work directory. The project directory itself.
WORKDIR /usr/local/shitisaid/

# Copy project files into the container.
COPY . /usr/local/shitisaid





# Get system dependencies
RUN apt-get update \
    && apt-get install \
    git \
    python3 \
    python3-pip \
    python3-venv \
    cron \
    libpq-dev gcc \
    apache2 -y


# Get project dependencies
RUN python3 -m venv venv 

RUN venv/bin/python3 -m pip install -r /usr/local/shitisaid/requirements.txt


# Install the cron file
RUN crontab /usr/local/shitisaid/crontabs/user-crontab


### Install Nginx configuration files


### Install


### Add user
RUN useradd pe23
USER pe23


### Assign default command. Ran at each boot.
### [ !!! ] GUNICORN PORT MUST MATCH EXPOSE [ !!! ]
CMD ["venv/bin/python3", "-m", "gunicorn", "main:app", "--workers", "8", "--bind", "0.0.0.0:1337"]


### ===============================
### ===============================
### ===============================

# Sources
# https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/
#


# Gracjan Blazejowski, 2026
## No AI. None needed.