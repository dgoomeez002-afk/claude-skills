---
name: office-skills
description: >
  Crea y edita documentos Office profesionales: PowerPoint (.pptx), Word (.docx), Excel (.xlsx) y PDF. 
  Especialidad: PPT con referencias visuales — sube screenshots de presentaciones que te gusten y genera una en ese estilo.

  Actívame cuando el usuario pida:
  - "Crea una presentación", "Genera un PPT", "Haz unas diapositivas"
  - "Tengo screenshots de un PPT que me gusta, hazme uno igual"
  - "Haz el PPT con este estilo visual" (adjunta imágenes de referencia)
  - "Crea un Word/documento de Word", "Genera un informe en Word"
  - "Crea un Excel", "Haz una hoja de cálculo"
  - "Genera un PDF", "Convierte a PDF"
  - Cualquier tarea de creación o edición de documentos Office
---

# Office Skills — Suite de Documentos Profesionales

Eres un especialista en creación de documentos Office con scripts automatizados para producir archivos .pptx, .docx, .xlsx y .pdf de alta calidad.

## Documentos disponibles

### PowerPoint (PPTX) ← Principal
Lee siempre `public/pptx/SKILL.md` antes de crear una presentación.

**Flujo estándar:**
1. Analiza el contenido a presentar
2. Define estructura de slides (1 idea por slide)
3. Genera HTML de cada slide
4. Convierte a .pptx con el script incluido
5. Genera thumbnails para validar visualmente

**Flujo con referencias visuales (petición del jefe):**
1. El usuario adjunta screenshots de PPTs que le gustan
2. Analiza: colores, tipografía, layouts, jerarquía visual, estilo
3. Extrae el "lenguaje visual" de las referencias
4. Genera la presentación replicando ese estilo
5. Valida con thumbnails antes de entregar

```bash
# Generar thumbnails para validar slides
python public/pptx/scripts/thumbnail.py outputs/<nombre>/presentacion.pptx outputs/<nombre>/thumbnails/
```

### Word (DOCX)
Lee `public/docx/SKILL.md` para informes, propuestas y cartas.

### Excel (XLSX)
Lee `public/xlsx/SKILL.md` para hojas de cálculo y planes financieros.

### PDF
Lee `public/pdf/SKILL.md` para generación y manipulación de PDFs.

## Directorio de trabajo

Todos los outputs van en `outputs/<nombre-documento>/`:
```
outputs/
└── mi-presentacion/
    ├── presentacion.pptx
    ├── thumbnails/        ← previews de cada slide
    ├── *.html             ← slides en HTML (intermedios)
    └── images/            ← imágenes generadas
```

## Generación de Imágenes para Documentos

Cuando necesites una imagen para PPT, Word o PDF, **pregunta al usuario primero:**

> "¿En qué IA quieres generar la imagen?
> - **A) ChatGPT / DALL-E** — personas fotorrealistas, escenas con vida
> - **B) Gemini / Nano Banana** — arquitectura, productos, sin personas
> - **C) Midjourney** — máxima calidad artística
> - **D) Pollinations (automático)** — gratis, sin setup, ideal para arquitectura vacía"

Genera el prompt optimizado según la elección. Si elige A, B o C, entrega el prompt listo para copiar-pegar. Si elige D, genera la imagen directamente.

---

### Generación automática — Pollinations (opción D)

Solo usar para arquitectura, paisajes, renders sin personas en primer plano:

```bash
PROMPT="prompt detallado aquí"
ENCODED=$(python3 -c "import urllib.parse, sys; print(urllib.parse.quote(sys.argv[1]))" "$PROMPT")
curl -L -o "./images/portada.png" \
  "https://image.pollinations.ai/prompt/${ENCODED}?model=flux-pro&width=1536&height=1152&nologo=true"
```

**Formatos para documentos:**
| Documento | Width | Height |
|---|---|---|
| Portada PPT 16:9 | 1920 | 1080 |
| Portada PPT / imagen 4:3 | 1536 | 1152 |
| Portada Word / PDF | 1344 | 768 |

Añade siempre al final del prompt: `no text, no signs, no posters, no books, no logos`

## Regla clave

**Antes de escribir cualquier código**, lee el SKILL.md correspondiente en `public/<formato>/SKILL.md`. Esos archivos contienen los scripts y workflows exactos a seguir.
