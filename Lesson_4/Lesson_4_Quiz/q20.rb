#  Question 20 0 / 1 PointsIncorrect
# Your team is asked to refactor some legacy code used by the marketing team. One of the requirements of the project is to change the implementation from using basic looping structures to using iterative methods instead.

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]


#  D. This implements the requirements correctly.

# Incorrect:

# A. Th/zs only capitalizes the first name in the name string. You might also note that this is not really an appropriate use of map, and each would be a better choice here.

# B. This performs an incorrect comparison in the conditional, using <= instead of <; although this error isn't surfaced by the test data it could have an impact in production.

# C. When evaluating our usable_leads, we want to check that the customer's last login was less than 60 days ago and also that they are subscribed to our mailing list. Because this solution uses reject rather than select it is only eliminating leads where neither of those things are true rather than just one of them. This could be fixed by using || instead of && in the conditional.