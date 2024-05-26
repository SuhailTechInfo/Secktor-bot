FROM quay.io/suhailtechinfo/suhail

# Clone the repository
RUN git clone https://github.com/SuhailTechInfo/Suhail-Md.git /root/Suhail

# Set the working directory
WORKDIR /root/Suhail/

# Remove the .git directory to save space
RUN rm -rf .git


# Install npm dependencies with network concurrency fix
RUN npm install


# Expose port 8000
EXPOSE 8000

# Start the application
CMD ["npm", "start"]
