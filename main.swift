import Foundation

let enfermeira1 = Enfermeira(
    nome: "Maria",
    idade: 28,
    salario: 4500.0,
    trabalhaNoite: true
)

print(enfermeira1.descricao())
enfermeira1.trabalhar()
enfermeira1.aplicarMedicamento(remedio: "Dipirona")
enfermeira1.aplicarMedicamento(remedio: "Amoxicilina", quantidade: 2)