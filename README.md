# Newsroom

- Newsroom app streamlines the newsroom workflow and gives journalists ability to work online. 
- Localize this in Urdu, Hindi, Punjabi to use as CMS in Pakistan and India.
- Potential localization in Arabic, Persian and Pashto.
- Target audience for this app is small and medium sized newsrooms and freelance bloggers and journalists.


# User stories:
- Reader flow. Reader can read unlimited stores and comment via Facebook, Twitter, disqus account. User can also share the story on their social media accounts.

- Reporter: Reporter can write an article and has ability to CRUD their own articles only.

- News Editor: Editor can CRUD any article and create new article. Editor also has manage panel where they can search of stories and look for all stories.


Admin can assign user rules into user database(stretch).

# Wireframes:

    (Coming Soon)

# Data Models and ERD:

    (Coming Soon)

# Tech
- Front-end: Bootstrap, Sass
- Back-end: Ruby on Rails
- Auth: Devise, CanCanCan
- Other: Social Share, Trix Editor, Disqus comments thread.


# Best Code:
'''
if user && user.role == 2
  can :manage, :all
end

if user && user.role == 1
  can :read, :all
  can :update, :destroy, Article do |article|
    article.user == user
  end
  can :create
  alias_action :create, :read, :update, :destroy, :to => :crud
  can :crud, Article do |article|
    article.user == user
  end
end

if user && user.role == nil
  can :read, :all
  can :create, Comment do |comment|
    comment.user = user
  end
end
'''

# Future Development ideas
- Make URL Pretty 
- Add badges on profiles 
- Make tags clickable.
- trending stories with view counts in aside.
- Add more features in Manage panel.

# Contributor
- Kashif Ali: https://www.linkedin.com/in/chkashifali
