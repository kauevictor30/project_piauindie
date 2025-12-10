# **GDD – Corrida das Tartarugas**

## **1. Visão Geral**
Um jogo de corrida tático para 4 jogadores. Cada jogador controla uma tartaruga e utiliza cartas para avançar, atrapalhar adversários ou manipular o estado da corrida.  
A tartaruga avança **1 casa por turno**. O percurso tem **8 casas**.  
No **4º turno**, a **Lebre** entra na corrida avançando **3 casas por turno**.  
Vence quem cruzar a linha de chegada **antes da Lebre**. Se a Lebre vencer, **todos perdem**.

---

## **2. Estrutura de Jogo**
- **Jogadores:** 4  
- **Tabuleiro:** Linha reta com 8 casas  
- **Turno:**  
  1. Jogador sempre terá 3 cartas na mão e deve decidir entre: *jogar carta* ou *descartar*.  
  2. Aplicam-se efeitos na fase do turno.  
  3. Fase de movimento (tartarugas + lebre).  

---

## **3. Fluxo de Turno**
1. **Ação**  
   - Jogador usa 1 carta **OU** descarta e compra uma carta.  
2. **Aplicação de efeitos**  
   - Buffs, debuffs, traps, bloqueios.  
3. **Movimento**  
   - Tartarugas movem:  
     - Base: **+1**  
     - Modificadores: slow, buff, stun, etc.  
     - Arredondamentos aplicados conforme regra.  
   - Após o 4º turno: Lebre move +3 (salvo efeitos).  
4. **Verificações**  
   - Check de chegada.  
   - Vitória imediata.  

---

## **4. Estados e Status**
- **Stunned**
  - Não move na fase de movimento.
- **Slow**
  - Move **0.5** por 2 turnos (arredonda para baixo).
- **Buff Movimento (Fôlego)**
  - Movimento base vira **+2** por 3 turnos.
- **Escudo**
  - Cancela o próximo efeito negativo.

---

## **5. Cartas**

| **Nome**     | **Efeito Lógico**                                                              | **Alvo**             |
|--------------|--------------------------------------------------------------------------------|----------------------|
| Sprint       | Avança +1 casa extra imediatamente                                             | Self                 |
| Empurrão     | Aplica *stunned* (não move na fase de movimento)                               | Enemy                |
| Lama         | Aplica *slow* por 2 turnos (movimento = 0.5 arredondado)                       | Enemy                |
| Fôlego       | Movimento base vira +2 por 3 turnos                                            | Self                 |
| Troca        | Troca a posição (position_ratio) com o alvo                                    | Enemy                |
| Armadilha    | Coloca trap na casa atual; próximo a pisar fica *stunned*                      | Chão                 |
| Escudo       | Bloqueia o próximo efeito negativo recebido                                    | Self                 |
| Motim        | Todas as tartarugas avançam +1                                                 | Global (Players)     |
| Soneca       | Reduz o contador da Lebre em -1 (ela dorme 1 turno extra)                      | Global (Lebre)       |
| Fadiga       | Alvo descarta carta aleatória ou perde o próximo turno de ação (não joga carta) | Enemy                |

---

## **6. Condições de Vitória**
- **Vitória do jogador:** Cruza a linha de chegada antes da Lebre.  
- **Derrota coletiva:** A Lebre cruza primeiro.  

---

## **7. Possíveis Extensões Futuras**
- Modos alternativos  
- Cartas raras ou épicas  
- Terrenos diferentes  
- Sistema de deck building  

