import { defineCollection, z } from "astro:content";
import { glob, file } from "astro/loaders";

const blog = defineCollection({
  loader: glob({ pattern: "**/*.md", base: "./src/content/blog" }),
  schema: z.object({
    title: z.string(),
    date: z.coerce.date(),
    tags: z.string().nullable().optional(),
    external_url: z.string().optional(),
  }),
});

const portfolio = defineCollection({
  loader: glob({ pattern: "**/*.md", base: "./src/content/portfolio" }),
  schema: z.object({
    title: z.string(),
    date: z.coerce.date(),
    tags: z.string().nullable(),
  }),
});

const source = defineCollection({
  loader: glob({ pattern: "**/*.md", base: "./src/content/source" }),
  schema: z.object({
    title: z.string(),
    date: z.coerce.date(),
    tags: z.string().nullable(),
  }),
});

export const collections = { blog, portfolio, source };
