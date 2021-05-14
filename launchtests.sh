docker build -t gate_opt .
docker run -d -v /home/david/gate_optimisation/circuits:/code/circuits -v /home/david/gate_optimisation/data:/code/data gate_opt
