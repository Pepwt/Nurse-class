// MARK: - Protocolo
protocol Profissional {
    var nome: String { get }
    func trabalhar()
}

// MARK: - Classe Base
class Pessoa {
    var nome: String
    var idade: Int

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }

    func descricao() -> String {
        return "Meu nome é \(nome) e tenho \(idade) anos."
    }
}

// MARK: - Subclasse (Enfermeira) que herda de Pessoa e adota o protocolo Profissional
class Enfermeira: Pessoa, Profissional {
    var salario: Float
    var trabalhaNoite: Bool

    init(nome: String, idade: Int, salario: Float, trabalhaNoite: Bool) {
        self.salario = salario
        self.trabalhaNoite = trabalhaNoite
        super.init(nome: nome, idade: idade)
    }

    override func descricao() -> String {
        return "Meu nome é \(nome), tenho \(idade) anos e sou enfermeira."
    }

    func trabalhar() {
        print("\(nome) está trabalhando como enfermeira.")
    }

    func aplicarMedicamento(remedio: String) {
        print("\(nome) aplicou o medicamento \(remedio).")
    }

    func aplicarMedicamento(remedio: String, quantidade: Int) {
        print("\(nome) aplicou \(quantidade) dose(s) do medicamento \(remedio).")
    }
}