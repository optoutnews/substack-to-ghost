# Substack ➡️ Ghost Migration Toolkit

Migration tools for moving from Substack to Ghost


## Migrating content

To migrate posts, use Ghost's official migration tool.

Install the migration tool with NPM:

`npm install --global @tryghost/migrate`


Then run this script, replacing the variables as appropriate.

```bash

# Replace this path ⬇️ with the path to your Substack data export
# export WORKDIR="./your_publication-export-20xx-x-x-hash_here"

# ⬇️ Run Ghost migration tool (npm package) on posts.csv
# (Substack phraseology)
migrate substack ${WORKDIR}/posts.csv \
# ⬇️ Posts directory
--readPosts ${WORKDIR}/posts \
# ⬇️ Run in verbose mode
--verbose \
# ⬇️ Scrape images, etc
--scrape all \
# Current URL of Substack publication
--url your-publication.substack.com \
# ⬇️ Email is good for associating the posts
# with a specific author. Will associate
# with existing user if not one exists.
--email author-name@optout.news \
# ⬇️ Import drafts
--drafts true \
# ⬇️ Mutate any current Substack subscribe links,
# replace with Ghost equivalents.
--subscribeLink \#/portal/signup 

```