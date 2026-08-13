# site-calead

Site estático da Calead. Sem build step: HTML, CSS inline e um script de comportamento no fim do `index.html`.

## Estrutura

- `index.html` — home no ar (v3)
- `v3.html` — cópia da v3 para link direto
- `v2.html` / `v1.html` — versões anteriores, mantidas para comparação (v1)
- `v2.html` — narrativa unidirecional em seis atos (`/v2`, noindex)
- `v3.html` — v2 com Captador real embutido, seção Para quem, bordas arredondadas e narrativa comprimida (`/v3`, noindex)
- `assets/` — logo e favicon
- `anim/jornada.html` — diagrama animado do caminho do lead (embutido via iframe na seção Plataforma)
- `anim/comparativo.html` — diagrama animado do comparativo
- `vercel.json` — cleanUrls

## Publicar na Vercel

1. Suba estes arquivos na raiz do repositório `calead-io/site-calead`.
2. Na Vercel: New Project, importe o repo.
3. Framework Preset: **Other**. Build Command: vazio. Output Directory: `.`
4. Deploy. Cada push na `main` republica.

## Pendências

- Fonte Stack Sans Headline: os títulos declaram a família mas os arquivos não estão no repo, então o navegador cai em Bricolage Grotesque. Adicionar os `.woff2` e um `@font-face`.
- Copy do Captador em inglês ("Schedule a 15-minute meeting"): vem da configuração do schedule no produto, não deste repo.
- As telas de produto da seção "O mecanismo" são interfaces recriadas em HTML, marcadas como "Ilustração da interface". Substituir por prints reais quando fizer sentido.
- Webhook do formulário de agendamento (os CTAs apontam para a seção `#conversa`).
- Captador do Calead no hero.
- Páginas de blog, política de privacidade e termos de uso.
- Cena do hero depende do projeto UnicornStudio `LEbaTZalLhAV6yt2oQTX`.
