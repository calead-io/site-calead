# site-calead

Site estático da Calead. Sem build step: HTML, CSS inline e um script de comportamento no fim do `index.html`.

## Estrutura

- `index.html` — home completa (v1)
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

- Prints de produto nas quatro tabs da seção Plataforma (hoje placeholders marcados).
- Webhook do formulário de agendamento (os CTAs apontam para a seção `#conversa`).
- Captador do Calead no hero.
- Páginas de blog, política de privacidade e termos de uso.
- Cena do hero depende do projeto UnicornStudio `LEbaTZalLhAV6yt2oQTX`.
