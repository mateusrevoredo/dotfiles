<p align="center">
  <a href="" rel="noopener">
 <img width=600px src="https://i.imgur.com/Xq4YDmU.jpg" alt="Project logo"></a>
</p>

<h2 align="center">My Personal Automated Machine Configurator</h2>

<div align="center">

  [![Status](https://img.shields.io/badge/status-active-success.svg)]()
  [![GitHub Issues](https://img.shields.io/github/issues/mateusrevoredo/dotfiles.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues)
  [![GitHub Pull Requests](https://img.shields.io/github/issues-pr/mateusrevoredo/dotfiles.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
  [![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> This project aims to reduce the overhead of setting up a new computer keeping the configuration shared across multiple devices.
    <br>
</p>

## 📝 Table of Contents
- [About/Motivation](#motivation)
- [Disclaimer](#disclaimer)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Customizing](#customizing)
- [What's installed](#whats_installed)
- [TODO](#todo)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About/Motivation <a name = "motivation"></a>
People that have worked with me in the past know that one of the things that I **dislike the most** is doing **repetitive tasks**. Copying and pasting snippets of code, running the same command multiple times, or clicking on the same UI elements repetitively. Yet I still found myself almost daily wasting a significant amount of time trying to keep all of my devices configured in sync.

I currently have my work MacBook, my personal MacBook, and a personal Debian LXC container hosted on [Proxmox](https://proxmox.com/en/) running on  a [web version of VS Code](https://github.com/cdr/code-server) that I connect on my iPad Pro using [Blink](https://blink.sh/) to do some lightweight coding tasks and administer my [homelab](https://github.com/mateusrevoredo/homelab) servers on the go.

Three different devices, two different operating systems, similar configurations. Apart from that, from time to time, you change jobs, get a different computer or just do a fresh OS install at home.

This project turns the repetitive job of maintaining multiple machines configured exactly the same into a couple of shell script lines that execute a streamlined Ansible playbook.

## ⚠️ Disclaimer <a name = "disclaimer"></a>

This project was written to fulfill my personal needs. Although It's generic enough to be executed in any computer according to [@anishathalye](https://github.com/anishathalye), [dotfiles are not meant to be forked](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles), and I tend to agree with this statement.

I still decided to make it open source because it can be a valuable source of inspiration or even serve as a starting point to someone that has decided to do something similar.

## 🏁 Getting Started <a name = "getting_started"></a>


1. [Install Ansible](http://docs.ansible.com/intro_installation.html)
2. Clone this repository to your local drive

## 🎈 Usage <a name="usage"></a>

2. Go to the `ansible` folder
2. Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles.

#### 🍎 macOS

* Run `ansible-playbook macos.yml -K`. Enter your account password when prompted.

#### 🐧 Linux

> This playbook assumes you have a VM or LXC container configured on your Ansible inventory named `devbox`

## 🔧 Customizing <a name = "customizing"></a>

There are two types of configurations:

1. Shared configs
2. OS specific configs

#### Shared Configs

Shared configs will be applied to both macOS and Linux. For example, you may always want to have this repo symlinked to `~/.dotfiles` or always have a subset of VS Code extensions installed regardless of the OS.

You can customize those by editing [common.config.yml](https://github.com/mateusrevoredo/dotfiles/blob/master/ansible/common.config.yml).

#### OS Specific

Other settings are tied to a certain OS. For example, configuration files of applications that are only installed on macOS but not on my Linux LXC container.

These should go to their respective files: `linux.yml` or `macos.yml`

## 🚀 What's Installed <a name = "whats_installed"></a>

### Applications

...TBD

### Command Line Apps

...TBD

## 💥 TODO <a name = "todo"></a>

...TBD

----

## ✍️ Authors <a name = "authors"></a>
- [@mateusrevoredo](https://github.com/mateusrevoredo) - Idea & Initial work

## 🎉 Acknowledgements <a name = "acknowledgement"></a>
A lot of people have their own personalized ways of doing what this project does. Here I thank some of them for the inspiration or code snippets that I picked from them.

- [@geerlingguy](https://github.com/geerlingguy) - For the massive amount of Ansible roles written. Some that I use in this repo, some that I used to understand how things work in Ansible.
- [@mathiasbynens](https://github.com/mathiasbynens) - For the base macOS preferences [script file](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) that I mostly copied and added a few other personal preferences.
- [@sapegin](https://github.com/sapegin) - For a lot of ideas on the initial structure of my zsh config based on [his dotfiles](https://github.com/sapegin/dotfiles)
- [@nikitavoloboev](https://github.com/nikitavoloboev) - For the huge amount of content shared with the community, that ended up being useful for this repo. Including [his dotfiles](https://github.com/nikitavoloboev/dotfiles) and [his macOS configuration repo](https://github.com/nikitavoloboev/my-mac-os)
- [@jglovier](https://github.com/jglovier) - For the free logo that I used as a base for mine.
