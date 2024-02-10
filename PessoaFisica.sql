package cadastrodb.model;

public class PessoaFisica extends Pessoa {
    private String cpf;

    public PessoaFisica(String cpf, int id, String nome, String logradouro, String cidade, String estado, String telefone, String email) {
        super(id, nome, logradouro, cidade, estado, telefone, email);
        this.cpf = cpf;
    }    

    // Getter e Setter para CPF
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    // Sobrescrita do método exibir() para incluir informações específicas de PessoaFisica
    @Override
    public void exibir() {
        super.exibir();
        System.out.println("CPF: " + this.cpf);
    }
}
