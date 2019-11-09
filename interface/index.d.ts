export interface Hook {
	name: string;
	file: string;
	line: number;
	end_line: number;
	type: string;
	doc: Doc;
}

export interface Doc {
	description: string;
	long_description: string;
	long_description_html: string;
	tags: Tag[];
}

export interface Tag {
	name: string;
	content: string;
	types?: string[];
	variable?: string;
	description?: string;
}
