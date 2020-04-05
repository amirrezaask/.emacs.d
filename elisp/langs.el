;;; langs.el --- language setup            -*- lexical-binding: t; -*-

;; Copyright (C) 2020  amirrezaask

;; Author: amirreza <amirrezaask@protonmail.com>


;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(use-package cquery :defer t)

(use-package mips-mode :defer t)

(use-package fsharp-mode :mode "\\.fs\\'")

(use-package csharp-mode :mode "\\.cs\\'")

(use-package nasm-mode :defer t)

(use-package haxor-mode :mode "\\.hax\\'")

(use-package json-mode
  :mode "\\.json\\'"
  :config
  (add-hook 'before-save-hook 'json-mode-beautify))

(use-package yaml-mode
  :mode
  "\\.ya?ml\\'")

(use-package toml-mode
  :mode "\\.toml\\'")

(use-package csv-mode
  :mode "\\.csv\\'")

(use-package protobuf-mode
  :mode "\\.proto\\'")


(use-package markdown-mode
  :mode "\\.md\\'")


(use-package go-mode
  :mode "\\.go\\'"
  :init
  (add-hook 'go-mode-hook (lambda () (add-to-list 'exec-path (concat (getenv "HOME") "/go/bin"))))
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-hook 'before-save-hook 'go-import-add)
  (add-hook 'before-save-hook 'go-remove-unused-import)
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(use-package go-add-tags :defer t)

(use-package gotest :defer t)


(use-package haskell-mode
  :mode "\\.hs\\'")

(use-package lsp-haskell
  :hook haskell-mode)

(use-package scala-mode
  :mode "\\.scala\\'")

(use-package sbt-mode
  :hook scala-mode)

(use-package python-mode
  :mode "\\.py\\'")


(use-package lsp-python-ms
  :hook (python-mode))


(use-package py-autopep8
  :hook python-mode)

(use-package jinja2-mode
  :mode "\\.j2$")

(use-package elixir-mode
  :mode "\\.ex\\'")

(use-package alchemist
  :defer t)

(use-package rust-mode
  :mode "\\.rs\\'")

(use-package flycheck-rust
 :mode "\\.rs\\'"
 :init (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
 :hook rust-mode)

(use-package cargo
  :mode "\\.rs\\'"
  :init (add-hook 'rust-mode-hook #'cargo-minor-mode))


(use-package paredit
 :hook ((emacs-lisp-mode clojure-mode) . paredit-mode))


(use-package parinfer
  :hook ((emacs-lisp-mode clojure-mode) . parinfer-mode))

(use-package rainbow-delimiters
  :hook ((prog-mode) . rainbow-delimiters-mode))

(use-package clojure-mode
  :mode "\\.cljs?\\'")

(use-package cider
  :mode "\\.cljs?\\'"
  :bind (:map cider-mode-map
	      ("C-x C-e" . 'cider-eval-last-sexp)))

(use-package lua-mode
  :mode "\\.lua\\'")

(use-package php-mode
  :mode "\\.php\\'")

(use-package phpunit
  :bind
  (("C-c C-t t" . phpunit-current-test)
   ("C-c C-t c" . phpunit-current-class)
   ("C-c C-t p" . phpunit-current-project)))

(use-package js2-mode
  :hook js-mode)

(use-package tide
  :mode "\\.ts\\'")

(use-package web-mode
  :mode ("\\.html\\'" "\\.css\\'"))

(use-package dockerfile-mode
  :mode "Dockerfile")

(use-package groovy-mode
  :mode ("\\.gradle\\'" "\\.groovy\\'"))

(use-package gradle-mode
  :mode "\\.gradle\\'")

(add-hook 'java-mode-hook (lambda ()
			    (c-set-offset 'arglist-intro '+)
			    (setq java-basic-offset 2)
			    (setq c-basic-offset 2)))

(use-package lsp-java
  :hook (java-mode))

(use-package racket-mode
  :mode "\\.rkt\\'")

(provide 'langs)
;;; langs.el ends here