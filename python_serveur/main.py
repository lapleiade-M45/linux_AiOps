from serveur_in import *
from serveur_out import *
from serveur_log import *


def launch_thread(log):


    client = openai.OpenAI(
        base_url="http://localhost:8080/v1", # "http://<Your api-server IP>:port"
        api_key = "sk-no-key-required"
    )

    completion = client.completions.create(
    model="davinci-002",
    prompt="I believe the meaning of life is",
    max_tokens=8
    )

    print(completion.choices[0].text)




def main():

    run_serveur_in();

main()