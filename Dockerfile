FROM quay.io/suhailtechinfo/suhail-v2
RUN git clone https://github.com/SuhailTechInfo/Suhail-Md.git /root/smd
WORKDIR /root/smd/
RUN rm -rf .git
RUN npm install
EXPOSE 8000
CMD ["npm", "start"]
