namespace DesafioProjetoHospedagem.Models
{
    public class Reserva
    {
        public List<Pessoa> Hospedes { get; set; }
        public Suite Suite { get; set; }
        public int DiasReservados { get; set; }

        public Reserva() { }

        public Reserva(int diasReservados)
        {
            DiasReservados = diasReservados;
        }

        public void CadastrarHospedes(List<Pessoa> hospedes)
        {
            if (Suite == null) throw new Exception("Erro ao cadastrar hospede: Selecione a suite primeiro");
            if (hospedes.Count <= 0 || hospedes == null) throw new Exception("Erro: Numero de hospedes inválido");
            if (hospedes.Count > Suite.Capacidade) throw new Exception("Numero de hóspedes maior que a capacidade");

            Hospedes = hospedes;
        }

        public void CadastrarSuite(Suite suite)
        {
            if (suite.Capacidade <= 0) throw new Exception("Erro: Capacidade inválida");
            if (suite == null) throw new Exception("Erro: Suite inválida");
            Suite = suite;
        }

        public int ObterQuantidadeHospedes() => Hospedes.Count;

        public decimal CalcularValorDiaria() => DiasReservados >= 10 ?  DiasReservados * Suite.ValorDiaria * 0.9M : DiasReservados * Suite.ValorDiaria;
    }
}