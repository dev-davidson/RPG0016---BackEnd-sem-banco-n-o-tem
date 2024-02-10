package cadastrodb;

import cadastrodb.model.PessoaFisica;
import cadastrodb.model.PessoaFisicaDAO;
import cadastrodb.model.PessoaJuridica;
import cadastrodb.model.PessoaJuridicaDAO;
import java.util.ArrayList;

public class CadastroDBTeste {    

    public static void main(String[] args) {
        testePessoaFisica();
        testePessoaJuridica();
    }

    public static void testePessoaFisica() {
        // Incluir Pessoa Física para teste
        PessoaFisica tester = new PessoaFisica("",0,"","","","","","");
        PessoaFisicaDAO.incluir(tester);

        // Exibir Pessoas Físicas
        ArrayList<PessoaFisica> pessoas = PessoaFisicaDAO.getPessoas();
        pessoas.forEach((e) -> e.exibir());

        // Excluir Pessoa Física de teste
        PessoaFisicaDAO.excluir(tester.getId());
    }

    public static void testePessoaJuridica() {
        // Incluir Pessoa Jurídica para teste
        PessoaJuridica teste = new PessoaJuridica("12345678910",0,"Bruno Silva","Av.Brasil 500","Ipatinga","MG","10987654321","bruno@ipatinga.com.br");
        PessoaJuridicaDAO.incluir(teste);

        // Exibir Pessoas Jurídicas
        ArrayList<PessoaJuridica> pessoas = PessoaJuridicaDAO.getPessoas();
        pessoas.forEach((e) -> e.exibir());

        // Excluir Pessoa Jurídica de teste
        PessoaJuridicaDAO.excluir(teste.getId());
    }
}
