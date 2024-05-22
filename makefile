

# How to use variables
# https://ftp.gnu.org/old-gnu/Manuals/make-3.79.1/html_chapter/make_6.html

TEMPLATE = "./templates/essential-guide-to-pandas-template.tex"
TOP_LEVEL_DIVISION = "chapter"
TITLEPAGE_COLOR = "EEEEEE"
TITLEPAGE_RULE_HEIGHT = 8
TITLEPAGE_BACKGROUND = "./templates/figures/titlepage-background-template.pdf"
PAGE_BACKGROUND = "./templates/figures/page-background-template.pdf"
PAGE_BACKGROUND_OPACITY = 0.8
FOOTER_RIGHT = "Page \thepage"
INSTITUTE = "Ibon Martínez-Arranz"
AUTHOR = "Ibon Martínez-Arranz"
TITLE = "Essential Guide to Pandas"
INTERMEDIATE_OUTPUT = "book"
INFO = "book.info"

all: generatebook

generatebook:
	pandoc book/000_title.md \
		book/001_introduction.md \
		book/010_data_loading.md \
		book/020_basic_data_inspection.md \
		book/030_data_cleaning.md \
		book/040_data_transformation.md \
		book/050_data_visualization_integration.md \
		book/060_statistical_analysis.md \
		book/070_indexing_and_selection.md \
		book/080_data_formatting_and_conversion.md \
		book/090_advanced_data_transformation.md \
		book/100_handling_time_series_data.md \
		book/110_file_export.md \
		book/120_advanced_data_queries.md \
		book/130_multi-index_operations.md \
		book/140_data_merging_techniques.md \
		book/150_dealing_with_duplicates.md \
		book/160_custom_operations_with_apply.md \
		book/170_integration_with_matplotlib_for_custom_plots.md \
		book/180_advanced_grouping_and_aggregation.md \
		book/190_text_data_specific_operations.md \
		book/200_working_with_json_and_xml.md \
		book/210_advanced_file_handling.md \
		book/220_dealing_with_missing_data.md \
		book/230_data_reshaping.md \
		book/240_categorical_data_operations.md \
		book/250_advanced_indexing.md \
		book/260_efficient_computations.md \
		book/270_advanced_data_merging.md \
		book/280_data_quality_checks.md \
		book/290_real_word_case_studies.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLE) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/essential-guide-to-pandas-cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLE)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

# REFERENCES
# https://github.com/Wandmalfarbe/pandoc-latex-template
# https://pypi.org/project/pandoc-latex-environment/
# https://pandoc-latex-tip.readthedocs.io/en/latest/index.html
# https://pandoc-latex-environment.readthedocs.io/en/latest/
