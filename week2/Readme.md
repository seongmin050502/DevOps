1. 서버와 가상화

서버(Server): 클라이언트의 요청(Request)을 받아 응답(Response)을 제공하는 주체이다.
베어메탈(Bare Metal): 하나의 컴퓨터에 OS를 설치하고 여러 소프트웨어를 실행하는 방식이다.
하이퍼바이저(Hypervisor): 하나의 물리 컴퓨터에서 여러 가상 머신을 실행하고 자원을 관리하는 기술이다.
컨테이너(Container): 호스트 OS의 커널을 공유하면서 격리된 환경에서 프로그램을 실행하는 기술이다.

2. WSL2와 Ubuntu
WSL2: Windows에서 리눅스를 사용 할 수 있게 해준다.
Ubuntu: 수업에서 사용하는 리눅스 배포판
WSL2를 이용하면 Windows에서도 리눅스 명령어를 사용하여 개발 할 수 있다.

(wsl --install, wsl -l -v, wsl --install -d Ubuntu-24.04, wsl --set-default Ubuntu-24.04)

기본 리눅스 명령어, git commit, push 등등
