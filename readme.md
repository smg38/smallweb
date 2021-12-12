## Small web server
### For Ubuntu
- install docker (Ubuntu):

  `sudo apt-get update
   sudo apt-get install docker-ce docker-ce-cli containerd.io`
### For Windows
- install docker:

https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe
- install git:

https://github.com/git-for-windows/git/releases/download/v2.34.1.windows.1/Git-2.34.1-64-bit.exe
### For all:
- get project:

   `git clone https://github.com/smg38/smallweb.git`
- copy files(import0_0.xml) to www
- start server(Ubuntu):

`./test.sh`
- stop server `Ctrl+C`
- URL:

http://localhost:88/import0_0.xml
