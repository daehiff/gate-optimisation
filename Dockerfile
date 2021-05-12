FROM ocaml/opam

# System wide dependencies gcc, python 3.7, pip and Boost
RUN sudo apt-get update
RUN sudo apt-get install libgmp-dev -y
RUN sudo apt-get install build-essential  manpages-dev -y
RUN sudo apt-get install libboost-all-dev -y
RUN sudo apt-get install python3.7 python3-pip -y
RUN sudo apt-get install libmpc-dev -y

RUN python3.7 --version
RUN gcc --version

ADD . /code
WORKDIR /code
RUN sudo chmod -R 777 .

# t-par deps setup

WORKDIR /code/t-par
RUN make clean && make all

# VOQC setup
WORKDIR /code/SQIR
RUN opam init --yes
RUN opam switch create voqc 4.10.0
RUN opam install dune zarith batteries openQASM
RUN  eval $(opam env)
WORKDIR /code/SQIR
RUN make voqc
WORKDIR /code/SQIR/VOQC
RUN eval $(opam env) && dune build extraction/libvoqc.so


# General python setup
RUN sudo pip3 install pipenv
WORKDIR /code
RUN pipenv install

CMD pipenv run python main.py
