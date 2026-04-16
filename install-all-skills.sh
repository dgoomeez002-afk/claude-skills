#!/bin/bash
# ============================================================
# INSTALL ALL SKILLS — Suite Profesional Claude Code
# ============================================================
# Ejecutar con: bash install-all-skills.sh
# Requiere: Git instalado + Claude Code instalado
# ============================================================

SKILLS_DIR="$HOME/.claude/skills"
echo ""
echo "============================================================"
echo "  INSTALANDO CLAUDE SKILLS SUITE"
echo "  7 Skills Profesionales — 85+ Comandos"
echo "============================================================"
echo ""

# Crear directorio si no existe
mkdir -p "$SKILLS_DIR"
cd "$SKILLS_DIR"

install_skill() {
  local name=$1
  local url=$2
  local dir="$SKILLS_DIR/$name"

  if [ -d "$dir" ]; then
    echo "  ↺ $name ya instalado — actualizando..."
    git -C "$dir" pull --quiet
  else
    echo "  ↓ Instalando $name..."
    git clone --depth=1 "$url" "$dir" --quiet
    echo "  ✓ $name instalado"
  fi
}

echo ""
echo "--- 1️⃣ MARKETING (copywriting, contenido, SEO, ads, CRO) ---"
install_skill "marketing-skills" "https://github.com/coreyhaines31/marketingskills"

echo ""
echo "--- 2️⃣ NEGOCIO (ideas, MVP, pricing, planes, crecimiento) ---"
install_skill "business-skills" "https://github.com/slavingia/skills"

echo ""
echo "--- 3️⃣ TÉCNICO-COMERCIAL (propuestas, onboarding, reportes) ---"
install_skill "technical-commercial" "https://github.com/zubair-trabzada/ai-agency-claude"

echo ""
echo "--- 4️⃣ DESARROLLO (code review, arquitectura, performance, seguridad) ---"
install_skill "developer-skills" "https://github.com/awesome-skills/code-review-skill"

echo ""
echo "--- 5️⃣ LEGAL (Expert 19.6K⭐, contratos, memos, briefs, ToS, privacy) ---"
install_skill "legal-writer" "https://github.com/kortix-ai/suna"

echo ""
echo "--- 6️⃣ TRADUCCIÓN (Expert 9.5/10, técnica + legal + medical + software) ---"
install_skill "translator" "https://github.com/theneoai/awesome-skills.git"

echo ""
echo "--- 7️⃣ COMMAND CENTER (memoria persistente + acceso rápido a skills) ---"
install_skill "command-center" "https://github.com/dgoomeez002-afk/claude-skills"

echo ""
echo "--- 📊 OFFICE SKILLS (transversal — PPT, Word, Excel, PDF) ---"
install_skill "office-skills" "https://github.com/tfriedel/claude-office-skills"

echo ""
echo "============================================================"
echo "  APLICANDO SKILL.md PERSONALIZADOS..."
echo "============================================================"

# Base URL de nuestro repo con los SKILL.md mejorados
SUITE_RAW="https://raw.githubusercontent.com/dgoomeez002-afk/claude-skills/main/skills"

apply_custom_skill() {
  local name=$1
  local dest="$SKILLS_DIR/$name/SKILL.md"
  local url="$SUITE_RAW/$name/SKILL.md"
  if command -v curl &> /dev/null; then
    curl -sL "$url" -o "$dest" 2>/dev/null && echo "  ✓ SKILL.md actualizado: $name" || echo "  ⚠ Sin custom SKILL.md: $name"
  fi
}

# Sobreescribir con nuestros SKILL.md mejorados
apply_custom_skill "marketing-skills"   # 60+ comandos (marketing + SEO integrados)
apply_custom_skill "developer-skills"   # 15+ comandos (code review + security)
apply_custom_skill "command-center"     # Memoria + Centro de comandos
apply_custom_skill "business-skills"
apply_custom_skill "technical-commercial"
apply_custom_skill "legal-writer"
apply_custom_skill "translator"
apply_custom_skill "office-skills"

echo ""
echo "============================================================"
echo "  INSTALACIÓN COMPLETADA ✅"
echo "============================================================"
echo ""
echo "✨ Suite de 7 Skills Profesionales Instalada"
echo ""
echo "  1️⃣  MARKETING       — 60+ comandos (copywriting, SEO, ads, CRO)"
echo "  2️⃣  NEGOCIO        — 10 comandos (ideas, MVP, pricing, planes)"
echo "  3️⃣  TÉCNICO-COM.   — 8 comandos (propuestas, onboarding, reportes)"
echo "  4️⃣  DESARROLLO     — 15+ comandos (code review, arquitectura, seguridad)"
echo "  5️⃣  LEGAL          — 9 tipos de documentos (contratos, privacy, ToS)"
echo "  6️⃣  TRADUCCIÓN     — 6 dominios (técnica, legal, medical, software)"
echo "  7️⃣  COMMAND CENTER — Memoria + Acceso rápido a todos los skills"
echo ""
echo "  📊 OFFICE SKILLS   — Transversal (PPT, Word, Excel, PDF)"
echo ""
echo "---"
echo "🎯 Cómo empezar:"
echo ""
echo "  Opción A (Línea de comandos):"
echo "    /skill-help                    # Ver todas las skills"
echo "    /skill-help marketing          # Ver solo marketing"
echo "    /seo-audit https://mi-web.com  # Auditar SEO"
echo ""
echo "  Opción B (Lenguaje natural - Recomendado):"
echo "    'Audita mi web'"
echo "    'Crea una propuesta'"
echo "    'Revisa este código'"
echo "    'Recuerda que...' (memoria)"
echo ""
echo "---"
echo "🔧 Configuración Opcional:"
echo ""
echo "  API Key CourtListener (legal-writer):"
echo "    export COURTLISTENER_API_TOKEN=\"tu-token\""
echo "    # Obtén gratis: https://www.courtlistener.com/"
echo ""
echo "  API Key Google Gemini (imágenes):"
echo "    export GEMINI_API_KEY=\"tu-api-key\""
echo ""
echo "  📝 Nota: Pollinations.ai funciona sin API key (FLUX gratis)"
echo ""
echo "---"
echo "📚 Documentación:"
echo "    ~/.claude/skills/command-center/SKILL.md    # Centro de operaciones"
echo "    ~/.claude/skills/marketing-skills/SKILL.md  # Marketing + SEO"
echo "    ~/.claude/skills/legal-writer/SKILL.md      # Documentos legales"
echo ""
echo "---"
echo "✨ Version: 1.0 (7 Skills Consolidados)"
echo "   Status: Production Ready ✅"
echo "============================================================"
