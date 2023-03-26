import pandas as pd
import csv

def get_users():
    df = pd.read_excel(r'src\config\usuario.xlsx', sheet_name='base')
    usuarios = []
    
    for index, row in df.iterrows():
        nome = row['Nome completo']
        email = row['Email']
        telefone = row['Telefone']
        sexo = row['Sexo']
        cidade = row['Cidade']
        estado = row['Estado']                   
        endereco = row['Endereço']

        # Cria um dicionário com as informações do usuário e adiciona na lista de usuários
        usuario = {
            'nome': nome,
            'email': email,
            'telefone': telefone,
            'sexo': sexo,
            'cidade': cidade,
            'estado': estado,
            'endereco': endereco
        }
        usuarios.append(usuario)    

    return usuarios