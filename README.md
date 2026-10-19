# 🔍 Multimodal Search Engine

Search through your images using **plain English** — powered by CLIP embeddings.

![Python](https://img.shields.io/badge/Python-3.8+-blue?style=flat-square&logo=python)
![CLIP](https://img.shields.io/badge/CLIP-sentence--transformers-412991?style=flat-square)
![Streamlit](https://img.shields.io/badge/Streamlit-1.35-red?style=flat-square&logo=streamlit)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

> ⚠️ **Note:** This project requires significant RAM (~1GB) to load the CLIP model.
> It is best run locally or on a paid cloud instance.
> Cloud deployment on free tiers is not supported due to memory constraints.

## 🎯 What It Does

- 🖼️ **Upload any collection of images** (JPG, PNG, WEBP)
- 💬 **Search with natural language** — *"a dog on a beach"*, *"red sports car"*, *"sunset over water"*
- 🧠 **CLIP embeddings** — encodes both images and text into the same 512-dimensional vector space
- 📊 **Similarity scores** — ranked results with match percentage
- ⚙️ **Adjustable threshold** — filter results by minimum similarity

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Python | Core language |
| OpenAI CLIP | Multimodal vision-language model |
| PyTorch | Deep learning backend |
| Streamlit | Web app UI |
| Pillow | Image processing |
| NumPy | Vector operations & cosine similarity |

---

## 🚀 Setup & Run

### 1. Clone the repo
```bash
git clone https://github.com/Navld14/multimodal-search-engine.git
cd multimodal-search-engine
```

### 2. Install dependencies
```bash
pip install -r requirements.txt
```

> **Note:** First run will download the CLIP ViT-B/32 model (~350MB). This happens automatically.

### 3. Run the app
```bash
streamlit run app.py
```

Open `http://localhost:8501` in your browser.

---

## 💡 How It Works

```
Images → CLIP Image Encoder → 512-dim embeddings
Query  → CLIP Text Encoder  → 512-dim embedding
                                      ↓
                          Cosine Similarity Search
                                      ↓
                            Ranked Results by Score
```

CLIP (Contrastive Language-Image Pretraining) was trained on 400 million image-text pairs, learning to map both modalities into a shared embedding space. This means the embedding for *"a dog"* sits close to actual dog images in vector space — enabling zero-shot search with no fine-tuning.

---

## 🧪 Example Queries

| Query | What it finds |
|-------|--------------|
| `a smiling person` | Photos with happy faces |
| `outdoor landscape` | Nature, parks, open spaces |
| `something colorful` | Vibrant, multi-colored images |
| `food on a table` | Meal photos, restaurants |
| `night scene with lights` | City lights, evening photos |

---

## 📁 Project Structure

```
multimodal-search-engine/
│
├── app.py              # Main Streamlit application
├── requirements.txt    # Python dependencies
├── .gitignore
└── README.md
```

---

## 🙋 Author

**Naveen Ladha**
[GitHub](https://github.com/Navld14)

---

## 📄 License

MIT License — free to use and modify.
