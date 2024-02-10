import java.util.Scanner;

public class CadastroDBTeste {

    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        boolean sair = false;

        while (!sair) {
            System.out.println("Selecione uma opção:");
            System.out.println("1. Incluir");
            System.out.println("2. Alterar");
            System.out.println("3. Excluir");
            System.out.println("4. Exibir pelo ID");
            System.out.println("5. Exibir todos");
            System.out.println("0. Sair");

            int opcao = scanner.nextInt();
            scanner.nextLine(); // Limpar o buffer do scanner

            switch (opcao) {
                case 1:
                    incluir();
                    break;
                case 2:
                    alterar();
                    break;
                case 3:
                    excluir();
                    break;
                case 4:
                    exibirPorId();
                    break;
                case 5:
                    exibirTodos();
                    break;
                case 0:
                    sair = true;
                    break;
                default:
                    System.out.println("Opção inválida!");
            }
        }
    }

    private static void incluir() {
        System.out.println("Selecione o tipo (1 para Pessoa Física, 2 para Pessoa Jurídica):");
        int tipo = scanner.nextInt();
        scanner.nextLine(); // Limpar o buffer do scanner

        if (tipo == 1) {
            // Incluir pessoa física
            // Implementar lógica para receber os dados e adicionar no banco de dados
        } else if (tipo == 2) {
            // Incluir pessoa jurídica
            // Implementar lógica para receber os dados e adicionar no banco de dados
        } else {
            System.out.println("Tipo inválido!");
        }
    }

    private static void alterar() {
        // Implementar lógica para alterar dados no banco de dados
    }

    private static void excluir() {
        // Implementar lógica para excluir dados do banco de dados
    }

    private static void exibirPorId() {
        // Implementar lógica para exibir dados por ID do banco de dados
    }

    private static void exibirTodos() {
        // Implementar lógica para exibir todos os dados do banco de dados
    }
}
