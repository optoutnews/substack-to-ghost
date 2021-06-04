# Substack ➡️ Ghost Migration Toolkit

Migration tools for moving from Substack to Ghost


## Migrating content

```bash

# Replace this path ↘️ with the path to your Substack data export
# export WORKDIR="./your_publication-export-20xx-x-x-hash_here"

# ⬇️ Run Ghost migration tool (npm package) on posts.csv
# (Substack phraseology)
migrate substack ${WORKDIR}/posts.csv \
# ⬇️Posts directory
--readPosts ${WORKDIR}/posts \
# ⬇️ Run in verbose mode
--verbose \
# ⬇️ Scrape images, etc
--scrape all \
# Current URL of Substack publication
--url optout.substack.com \
# ⬇️ Email is good for associating the posts
# with a specific author. Will associate
# with existing user if not one exists.
--email alex@optout.news \
# ⬇️ Import drafts
--drafts true \
# ⬇️ Mutate any current Substack subscribe links,
# replace with Ghost equivalents.
--subscribeLink \#/portal/signup 

```