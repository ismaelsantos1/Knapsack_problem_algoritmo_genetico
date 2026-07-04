$instancias = @(
    @{ nome="100";   arquivo="kp_instances/large_scale/knapPI_3_100_1000_1";   pop=1000; mut=0.05; gen=5000 },
    @{ nome="500";   arquivo="kp_instances/large_scale/knapPI_3_500_1000_1";   pop=1000; mut=0.05; gen=5000 },
    @{ nome="1000";  arquivo="kp_instances/large_scale/knapPI_3_1000_1000_1";  pop=1000; mut=0.03; gen=1000 },
    @{ nome="2000";  arquivo="kp_instances/large_scale/knapPI_3_2000_1000_1";  pop=1000; mut=0.03; gen=800  },
    @{ nome="5000";  arquivo="kp_instances/large_scale/knapPI_3_5000_1000_1";  pop=1000; mut=0.02; gen=800  },
    @{ nome="10000"; arquivo="kp_instances/large_scale/knapPI_3_10000_1000_1"; pop=1000; mut=0.02; gen=600  }
)

$reps = 3
$output = "resultados_seq.csv"

"Instancia,Exec,Tempo_ms,Valor" | Out-File $output -Encoding UTF8

foreach ($inst in $instancias) {
    Write-Host "=== Instancia $($inst.nome) itens ===" -ForegroundColor Yellow
    for ($r = 1; $r -le $reps; $r++) {
        Write-Host "  Exec $r/$reps ..." -NoNewline
        $out = & .\mochila_seq.exe $inst.pop $inst.mut $inst.gen 1 $inst.arquivo 2>&1 | Out-String
        $tempo = 0; $valor = 0
        if ($out -match "Tempo Execucao:\s+([\d.]+)\s+ms") { $tempo = [double]$Matches[1] }
        if ($out -match "Melhor Valor\s+:\s+(\d+)")         { $valor = [int]$Matches[1]    }
        "$($inst.nome),$r,$tempo,$valor" | Out-File $output -Append -Encoding UTF8
        Write-Host " ${tempo}ms  valor=$valor" -ForegroundColor Green
        Start-Sleep -Milliseconds 300
    }
}

Write-Host "Concluido! CSV: $output" -ForegroundColor Green
