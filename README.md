# Ruby & Sinatra Beginner Project

A simple Ruby + Sinatra application to get started with web development in Ruby.  
This project covers installation, setup, and running a minimal Sinatra server.

---

## 📌 Prerequisites

Before starting, make sure you have:

- **Ruby** installed (v3.x recommended)  
- **Bundler** gem installed  
- **Sinatra** gem installed  

---

## 🛠 Installation

### 1️⃣ Install Ruby
Follow the [official Ruby installation guide](https://www.ruby-lang.org/en/documentation/installation/) or use:

**On Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install ruby-full
brew install ruby
gem install bundler
source "https://rubygems.org"

gem "sinatra"
Then run:
bundle install
▶ Running the App
Create a file app.rb:
require 'sinatra'

get '/' do
  "Hello, Sinatra! This is my first Ruby web app."
end
Run the app:

bash
Copy
Edit
ruby app.rb
Open your browser and go to:

http://localhost:4567
🐞 Troubleshooting
command not found: ruby
Ruby might not be installed or not added to your system PATH.

require': cannot load such file -- sinatra (LoadError)
Install Sinatra with:


gem install sinatra
or ensure your Gemfile is correct and run:

bundle install
📂 Project Structure

.
├── Gemfile
├── app.rb
└── README.md






