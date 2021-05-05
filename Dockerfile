FROM rimuru07/ruserbot:latest

#clonning repo 
RUN git clone https://github.com/moci07/ruserbot.git /root/ruserbot
#working directory 
WORKDIR /root/ruserbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/ruserbot/bin:$PATH"

CMD ["python3","-m","ruserbot"]
