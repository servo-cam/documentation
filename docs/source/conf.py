# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'SERVO CAM'
copyright = '2023, servocam.org'
author = 'szczyglis-dev, Marcin Szczygliński'
release = '0.9.2'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

templates_path = ['_templates']
exclude_patterns = []


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output
extensions = [
    'sphinx_rtd_theme',
    'rst2pdf.pdfbuilder'
]

latex_elements = {
    'maketitle': '',  # No Title Page
    # ...
}

html_theme = "sphinx_rtd_theme"
html_static_path = ['_static']
html_theme_options = {
    'navigation_depth': 3,
}

language = 'en'
locale_dirs = ['locale/']   # path is example but recommended.
gettext_compact = False     # optional.