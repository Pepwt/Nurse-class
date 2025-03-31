# Projeto Swift: Enfermeira e Pessoa

Este projeto demonstra conceitos fundamentais de Swift, como herança, protocolos, sobrescrita e sobrecarga de métodos. O código está dividido em dois arquivos principais:

- **Enfermeira.swift:** Define o protocolo `Profissional`, a classe base `Pessoa` e a subclasse `Enfermeira`, que herda de `Pessoa` e adota o protocolo.
- **main.swift:** Ponto de entrada do programa, onde uma instância de `Enfermeira` é criada e seus métodos são testados.

## Estrutura do Projeto

├── README.md ├── Enfermeira.swift ├── main.swift └── .replit (opcional, para configuração no Replit)


## Conteúdo dos Arquivos

### Enfermeira.swift
- **Protocolo `Profissional`:**  
  Define a propriedade `nome` e o método `trabalhar()`, que devem ser implementados por qualquer classe que adote o protocolo.

- **Classe `Pessoa`:**  
  Contém as propriedades `nome` e `idade`, além do método `descricao()` para retornar informações sobre a pessoa.

- **Classe `Enfermeira`:**  
  Herda de `Pessoa` e implementa o protocolo `Profissional`.  
  Possui os atributos `salario` e `trabalhaNoite`, sobrescreve o método `descricao()`, implementa o método `trabalhar()` e possui dois métodos sobrecarregados `aplicarMedicamento` (um com apenas o nome do medicamento e outro com o nome e a quantidade).

### main.swift
- **Código Principal:**  
  Instancia um objeto do tipo `Enfermeira` e demonstra o funcionamento dos métodos:
  - Exibe a descrição da enfermeira.
  - Chama o método `trabalhar()`.
  - Executa os métodos `aplicarMedicamento`, demonstrando a sobrecarga.

## Como Compilar e Executar

### No Replit
1. **Configurar o arquivo `.replit`:**  
   Crie ou edite o arquivo `.replit` com o seguinte conteúdo para compilar todos os arquivos Swift do diretório:
   ```ini
   entrypoint = "main.swift"
   modules = ["swift"]

   run = "swiftc *.swift -o main && ./main"

   [nix]
   channel = "stable-24_05"
