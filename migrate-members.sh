# export EMAILS="your-publication_signup_emails_20XX-X-X.csv"

# export SUBS="your-publication_subscriber_emails_20XX-X-X.csv"

migrate substack-members ${EMAILS} \
--subs ${SUBS} \
--verbose \
--giftLabel substack-gifted \
--freeLabel substack-free \
--paidLabel substack-paid \