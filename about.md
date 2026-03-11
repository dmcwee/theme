---
title: About Theme
layout: page
---

## // Layouts

There are 4 layouts in this theme:

* **default** - The basis for all other layouts. This includes the header, footer for all other pages to utilize
* **page** - Basic page that adds the Page's title as a *H1* at the top of the page and then all other content on the page is shown
* **category** - Simple extension page for displaying posts by category. Posts are displayed using the `post-list` include format and are filtered based on the *front matter's* `category` value. The *front matter* page title and description are also shown above the list of posts.
* **post** - The primary format for posts. This includes a page image banner with the title, published date, and author below. The summary or excerpt is displayed next and then the content for the post itself follows.

## // Includes

There are 7 includes available in this theme, but only 4 would be used in a site that utilizes this theme:

> All of the post-* includes have a `posts` include value you set when referencing them so you have full control over what should be rendered by each.

* **post-featured.html** - This generates the featured posts where the most recent post gets a full width display with the title, tags, author, and summary overlaying the post's image. Other featured posts will be displayed below the most recent and will use a grid layout like the **post-grid.html**.
* **post-grid.html** - This generates a grid 3 posts wide. The post's image will appear at the top portion of the grid with the title, tags, date, author, and summary displayed below.
* **post-list.html** - This generates a vertical list of posts. The post's image will appear on the left with the title, tags, date, author, and summary to the right.
* **post-timeline.html** - This generates a vertical timeline hierarchy view of the posts organized by *year*, then *month*, and then *day*.

>  These includes are referenced by the `default` layout, so you should not need to reference them in your site unless you are createing a new layout.

* *header.html* - This is the page's header which is primarily the rendering of the navigation. Navigation can be driven by the pages at the root level of the site, or it can be overridden by the `_data/navigation.yml` file. 
* *footer.html* -  This is the page's footer. The footer displays the site title and description on the left while showing social media links, managed by the `_data/socialmedia.yml` file as well as extra footer links managed by the `_data/footerlinks.yml`.
* *google-analytics.html* - This adds Google Analytics to the page. If the site and page do not have google analytics setting then nothing is rendered. You can set a site wide analytics id by adding `google_analytics: [your analytics code here]` to your `config.yml` file. You can also override the google analytics on a per page basis by settings the `google_analytics` value in the *front matter* header of your page.

## // SASS

All styling for the theme is in the `_sass/theme.scss` file. The `default` template includes a `style.css` reference.

{% raw %}
```html
 <link rel="stylesheet" href="{{ '/assets/css/style.css' | relative_url }}">
```
{% endraw %}

To extend the theme's style create the file `/assets/css/style.scss` as shown:

```css
@import "theme"

/* insert you css below */
```

## // Navigation

There are two options for navigation with this theme.

* **YOLO** - The site's navigation is generated from the pages collection.
* **navigation.yml** - The site's navigation is based on the `navigation.yml` file in the `_data` folder of your site.

### navigation.yml format

The navigation.yml supports links and sub menus. Format the yml as show to render appropriately.

```yml
- name: Home
  link: /
- name: Item 1
  link: /item-1
- name: About
  link: /about
- name: Menu
  link: #
  dropdown:
    - name: sub-item-1
      link: /sub/item-1
    - name: sub-item-2
      link: /sub/item-2
```

### footerlinks.yml

Footer links follow the same format as the navigation.yml, but does not support the sub-menu concept.

## // Social Media

Social Media links are rendered in the footer of the site on the right. You control what Social Media links you want to use as well as the image for each by setting these in the `socialmedia.yml` file in the `_data` directory of your site.

> The iconclass used by the socialmedia.yml file relies on the [bootstrap icons](https://icons.getbootstrap.com/).

```yml
- name: linkedin
  username: YOUR_USERNAME_HERE
  iconclass: bi-linkedin
  url: "https://www.linkedin.com/in/YOUR_USERNAME_HERE/"
- name: twitter
  username: YOUR_USERNAME_HERE
  iconclass: bi-twitter
  url: "https://twitter.com/YOUR_USERNAME_HERE"
```
