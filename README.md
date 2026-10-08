# 🧠 IA desmistificada

**O que acontece de verdade dentro de uma inteligência artificial** — como ela prevê, como aprende, como pode ser enganada e por que às vezes inventa coisas com toda a confiança.

Material aberto da palestra **“IA por dentro”**, apresentada na Semana de Tecnologia do curso de Análise e Desenvolvimento de Sistemas da **FATEC Indaiatuba** (outubro de 2026).

### 👉 [Acesse o site do material](https://marlon-greg.github.io/ia-desmistificada/)

---

## 📚 Materiais

| Material | O que tem | Link |
|---|---|---|
| 📘 **Apostila IA desmistificada** | Os 4 blocos explicados do zero: tokens, probabilidade e temperatura; dados, treino e viés; prompt injection; alucinação. Com exercícios e respostas comentadas. | [PDF](pdf/apostila-ia-desmistificada.pdf) |
| 🖐️ **Passo a passo · Teachable Machine** | Treine sua própria IA de visão pela webcam, sem código. Experimento de viés, ajustes avançados e como colocar o modelo num site. | [PDF](pdf/passo-a-passo-teachable-machine.pdf) |
| 🧙 **Guia · Desafio Gandalf** | O que cada nível defendia, por que cada defesa caiu e como se protege uma aplicação real contra prompt injection. | [PDF](pdf/guia-desafio-gandalf.pdf) |

## 🧵 O fio condutor

> **Toda IA aprende padrões para prever a próxima coisa.**

| Bloco | Pergunta | Prática |
|---|---|---|
| 1 | **Como a IA prevê?** Probabilidade, temperatura e contexto | Votação ao vivo: “você é o ChatGPT” |
| 2 | **Como a IA aprende?** Dados, treino e viés | Teachable Machine ao vivo |
| 3 | **Como enganar a IA?** Prompt injection | Desafio Gandalf, com ranking |
| 4 | **Quando a IA erra?** Alucinação | Verdade ou inventado? |

## 🧪 Pratique em casa

- [Teachable Machine](https://teachablemachine.withgoogle.com/) — treine modelos de imagem, som e pose no navegador.
- [Gandalf, da Lakera](https://gandalf.lakera.ai/) — o jogo original que inspirou o desafio da palestra.
- [Tiktokenizer](https://tiktokenizer.vercel.app/) — veja um texto virar tokens.

## 📂 Estrutura do repositório

```
index.html        → página do material (GitHub Pages)
pdf/              → os PDFs prontos
fontes/           → fontes HTML dos PDFs + script de geração
```

Para gerar os PDFs de novo (Windows + WSL, com o Microsoft Edge instalado):

```bash
bash fontes/gerar-pdfs.sh            # todos
bash fontes/gerar-pdfs.sh apostila   # só um (apostila | teachable-machine | gandalf)
```

## 👤 Autor

**Prof. Marlon Greg** · [github.com/marlon-greg](https://github.com/marlon-greg)

Se o material te ajudou, **⭐ dê uma estrela no repositório** — isso ajuda mais gente a encontrá-lo.

## 📄 Licença

O conteúdo (textos, PDFs e página) está sob a licença [Creative Commons Atribuição 4.0 Internacional (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.pt_BR): você pode copiar, adaptar e usar em aulas, inclusive comercialmente, desde que cite a fonte. Veja [LICENSE](LICENSE).

Teachable Machine é uma ferramenta do Google. Gandalf é um jogo da Lakera. O desafio da palestra foi uma versão própria, inspirada nele.
