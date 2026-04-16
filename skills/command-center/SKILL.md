---
name: command-center
description: >
  Centro de operaciones integrado de Claude Skills Suite. Combina memoria persistente (gbrain)
  y comando center (skill-help) en una interfaz unificada.
  
  Gestión de clientes, proyectos, contexto persistent + acceso rápido a todas las skills.
  
  Actívame cuando el usuario pida:
  - "Recuerda esto...", "Guarda...", "Memoriza..."
  - "¿Qué sabemos de [cliente/proyecto]?"
  - "¿Cuál es el contexto de...?", "¿Qué status tiene...?"
  - "/skill-help", "/help", "¿Qué skills tengo?"
  - "Ver todas las commands", "Buscar skill para..."
  - Gestión de clientes, proyectos, reuniones, contexto
---

# 🎯 COMMAND CENTER — Centro de Operaciones IA

**Memoria persistente + Acceso rápido a 7 skills profesionales (60+ comandos)**

---

## 📚 CARACTERÍSTICAS PRINCIPALES

### 1. SISTEMA DE MEMORIA PERSISTENTE (gbrain)

**Qué almacena:**
- 📊 **Clientes** — Historial, contactos, proyectos activos, deadlines, notas
- 📋 **Proyectos** — Estado, timeline, deliverables, referencias
- 💬 **Reuniones** — Temas tratados, acuerdos, action items
- 📁 **Contexto** — Referencias a documentos, links, especificaciones
- 🔗 **Relaciones** — Cómo se conectan clientes, proyectos, temas

**Ventajas:**
- ✅ Almacenamiento local (privacidad total)
- ✅ Escalable hasta 1000+ archivos
- ✅ Búsqueda inteligente contextual
- ✅ Integración nativa con MCP
- ✅ Open source (gratis)

---

### 2. CENTRO DE COMANDOS (skill-help)

**Acceso unificado a 7 skills profesionales:**

| Categoría | Skill | Comandos | Features |
|-----------|-------|----------|----------|
| 🎯 **MARKETING** | marketing-skills | 60+ | Copy, SEO, ads, CRO, analytics |
| 💼 **NEGOCIO** | business-skills | 10 | Ideas, MVP, pricing, planes |
| 📝 **TÉCNICO-COM** | technical-commercial | 8 | Propuestas, onboarding, reportes |
| 👨‍💻 **DESARROLLO** | developer-skills | 15+ | Code review, arquitectura, seguridad |
| ⚖️ **LEGAL** | legal-writer | 9 | Contratos, memos, privacy, ToS |
| 🌍 **TRADUCCIÓN** | translator | 6 | Técnica, legal, medical, software |
| 🎨 **OFFICE** | office-skills* | - | PPT, Word, Excel, PDF |

**\* office-skills integrada transversalmente en todas las demás**

---

## 💾 CÓMO USAR LA MEMORIA

### Guardar Información
```
"Recuerda que el cliente X tiene deadline el 15 de mayo"
→ Claude almacena automáticamente

"El proyecto Y necesita estas 3 entregas: A, B, C"
→ Se guarda en contexto del proyecto

"En la reunión con Lucas acordamos usar Supabase"
→ Se documenta con fecha y participantes
```

### Consultar Información
```
"¿Qué sabemos del cliente X?"
→ Claude retorna historial completo, contactos, proyectos

"¿Cuál es el status del proyecto Y?"
→ Estado actual, timeline, deliverables pending

"¿Qué acordamos la última vez?"
→ Resumen de reunión + action items
```

### Buscar Contexto
```
"¿Hay algo sobre [tema] en nuestro contexto?"
→ Búsqueda inteligente en toda la memoria

"Muestra referencias a [cliente/proyecto]"
→ Timeline de interacciones y decisiones
```

---

## 🔍 ACCESO RÁPIDO A SKILLS

### Comando Central
```
/skill-help                      # Ver todas las 7 skills
/skill-help marketing            # Solo marketing (60+ comandos)
/skill-help [skill-name]         # Detalles específicos
/skill-help contracts            # Buscar por tema
```

### Activación Automática (Lenguaje Natural)
```
"Necesito auditar mi web"
→ Activa automáticamente /seo-audit

"Crea una propuesta para cliente X"
→ Activa automáticamente /technical-commercial

"Revisa este código"
→ Activa automáticamente /developer-skills

"Redacta un NDA"
→ Activa automáticamente /legal-writer
```

---

## 📋 CATÁLOGO DE SKILLS

### 🎯 MARKETING SKILLS (60+ comandos)

**Marketing Core:**
- `/copywriting` — Copy para landing, email, ads
- `/content-strategy` — Plan de contenido 3-6 meses
- `/social-content` — Posts para Instagram, TikTok, LinkedIn, X
- `/email-sequence` — Welcome, nurture, sales, retention
- `/ad-copy` — Copy para Google, Meta, TikTok, LinkedIn
- `/cro-audit` — Auditoría de conversiones
- `/retention-strategy` — Plan de retención y loyalty

**SEO Técnico (integrado):**
- `/seo-audit` — Auditoría técnica completa (0-100 score)
- `/seo-report` — Reporte ejecutivo con plan
- `/seo-fix` — Correcciones automáticas quick-wins
- `/seo-speed` — Performance & Core Web Vitals
- `/seo-keywords` — Análisis de keywords
- `/seo-meta` — Optimizar titles y descriptions
- `/seo-compare` — Comparar con competencia

**Graphics & Analytics:**
- Generación de gráficos (Python/matplotlib)
- Imágenes IA (DALL-E, Gemini, Pollinations)
- Análisis de datos y reportes

---

### 💼 BUSINESS SKILLS (10 comandos)

- `/validate-idea` — Validar viabilidad
- `/mvp` — Definir MVP
- `/marketing-plan` — Plan 12 meses
- `/pricing` — Estrategia de precios
- `/grow-sustainably` — Crecimiento sin inversión
- Y 5 más...

---

### 📝 TECHNICAL-COMMERCIAL SKILLS (8 comandos)

- `/agency propose` — Propuesta con 3 niveles + ROI
- `/agency quick` — Propuesta urgente 1 página
- `/agency stack` — Recomendación tech stack
- `/agency onboard` — Plan 30 días
- Y 4 más...

---

### 👨‍💻 DEVELOPER SKILLS (15+ comandos)

- **Code Review** — Análisis profesional, seguridad, performance
- **Auditoría** — Codebase health, deuda técnica
- **Arquitectura** — Análisis de diseño, escalabilidad
- **Optimización** — Performance, memory, queries
- **Seguridad** — OWASP, vulnerabilidades, compliance
- **Mejoras** — Refactoring, modernización, testing

**Lenguajes:** Python, JS/TS, React, Rust, Go, Java, C#, Kotlin, Swift, Ruby, PHP, SQL

---

### ⚖️ LEGAL WRITER (9 tipos de documentos)

- **Contracts** — Services, NDAs, Settlement
- **Legal Memos** — Análisis jurídico
- **Briefs** — Documentos de corte
- **ToS + Privacy** — Términos y políticas
- Y 5 más...

**Features:**
- CourtListener API (case law)
- eCFR API (regulaciones federales)
- Bluebook citations automático
- TDD verification (verificación por sección)

---

### 🌍 TRANSLATOR (6 dominios)

- **Technical** — Engineering, IT, patents
- **Legal** — Contratos, regulatory
- **Medical** — Clinical trials, drug labels
- **Software** — UI, help, localization
- **Marketing** — Transcreation, brand
- **Literary** — Novelas, poesía, subtítulos

**Features:**
- 5 Gate Questions framework
- MTPE (Post-Machine Translation Editing)
- ISO 17100 compliant
- 30+ idiomas soportados

---

## 🎨 OFFICE SKILLS (integrada transversalmente)

**Disponible para todas las skills cuando se necesite:**

- **PowerPoint** — Presentaciones con referencias visuales
- **Word** — Reportes, propuestas, documentos
- **Excel** — Proyecciones, análisis, datos
- **PDF** — Reportes profesionales

**Características:**
- PPT con replicación de estilo visual (basado en screenshots)
- Gráficos Python/matplotlib descargables
- Imágenes IA (DALL-E, Gemini, Pollinations)
- Thumbnails para validación

---

## 🚀 FLUJOS DE TRABAJO TÍPICOS

### Caso 1: Gestionar Nuevo Cliente
```
1. "Recuerda: Cliente X, email: x@example.com, deadline: 15 mayo"
   → Se almacena en memoria

2. "Crea una propuesta para cliente X"
   → /agency propose activa automáticamente

3. "¿Qué sabemos del cliente X?"
   → Retorna historial completo, acordos previos

4. "Genera el contrato"
   → /legal-writer genera automáticamente
```

### Caso 2: Proyecto Marketing Completo
```
1. "Valida esta idea de negocio"
   → /validate-idea

2. "¿Cuál es el contexto del proyecto?"
   → Recupera de memoria

3. "Crea estrategia de marketing"
   → /marketing-plan + /content-strategy

4. "Audita el SEO"
   → /seo-audit con score 0-100

5. "Genera presentación visual"
   → office-skills PPT + gráficos
```

### Caso 3: Code Review + Documentación
```
1. "Revisa este código"
   → /developer-skills code review

2. "¿Cómo arreglamos?"
   → Propuestas de mejora + refactoring

3. "Genera documentación"
   → office-skills Word + diagrama
```

---

## 🔧 REQUISITOS Y SETUP

### Para gbrain (Memoria)
```bash
curl https://bun.sh/install | bash  # Install Bun runtime
```

### Para legal-writer (Case Law Lookup)
```bash
export COURTLISTENER_API_TOKEN="tu-token"
# Obtén token gratis: https://www.courtlistener.com/
```

### Para Imágenes IA (Opcional)
```bash
export GEMINI_API_KEY="tu-api-key"        # Google Gemini
export DALLE_API_KEY="tu-api-key"         # OpenAI DALL-E
```

**Nota:** Pollinations.ai funciona sin API key (FLUX gratis)

---

## 📊 ESTADÍSTICAS DE LA SUITE

- **Total skills:** 7
- **Total comandos:** 85+
- **Lenguajes soportados:** 30+
- **GitHub stars:** 19.6K+ (legal-writer)
- **Expert verified:** 2 skills
- **Cobertura de dominios:** 6 (Marketing, Negocio, Legal, Tech, Traducción, Office)
- **Tiempo de instalación:** <2 minutos

---

## 💡 TIPS PARA MÁXIMO APROVECHAMIENTO

### 1. Empieza con `/skill-help`
```
/skill-help
→ Ve todas las 7 skills disponibles
→ Elige la que necesitas
```

### 2. Usa lenguaje natural
```
❌ "/seo-audit"
✅ "Audita mi web"
→ Claude activa automáticamente
```

### 3. Combina skills
```
1. Valida idea       → /validate-idea
2. Crea plan         → /marketing-plan
3. Define MVP        → /mvp
4. Estrategia precios → /pricing
→ Plan de negocio completo
```

### 4. Aprovecha la memoria
```
"Recuerda que cliente X tiene deadline"
→ Claude almacena automáticamente
→ Futuro: "Status del cliente X"
→ Claude recuerda el contexto
```

### 5. Genera reportes profesionales
```
/seo-report
/agency report
→ Documentos PDF listos para enviar
```

---

## ✨ DIFERENCIADORES

- **Auto-detection** — Entiende tu necesidad automáticamente
- **Memoria contextual** — Recuerda clientes, proyectos, acuerdos
- **Salida profesional** — Gráficos, PPT, PDF descargables
- **Multidominio** — 6 dominios completamente cubiertos
- **Expert verified** — Skills de 19.6K+ stars y 9.5/10 rating
- **Privacidad** — Almacenamiento local, sin exposición de datos

---

## 📞 CÓMO EMPEZAR

### Opción 1: Comando Directo
```
/skill-help
/skill-help marketing
/seo-audit https://mi-web.com
```

### Opción 2: Lenguaje Natural (Recomendado)
```
"Necesito auditar el SEO de mi web"
"Valida esta idea de negocio"
"Recuerda que el cliente X..."
"¿Qué sabemos del proyecto Y?"
```

### Opción 3: Usar Memoria
```
"Guarda contexto importante"
"¿Contexto de [tema]?"
"Timeline de [cliente/proyecto]"
```

---

**Versión:** 1.0 (Integración gbrain + skill-help)
**Última actualización:** Abril 16, 2026
**Status:** Production Ready ✅
