using DesafioPOO.Models;

Smartphone iphone = new Iphone(
        numero: "8479",
        modelo: "13 Pro",
        IMEI: "123123123",
        memoria: 12);

Smartphone nokia = new Nokia(
        numero: "3567",
        modelo: "11",
        IMEI: "123444444",
        memoria: 8);

Console.WriteLine("Nokia:");
nokia.InstalarAplicativo("Music Dash");
nokia.Ligar();

Console.WriteLine("Iphone:");
iphone.ReceberLigacao();
iphone.InstalarAplicativo("Circle dash");