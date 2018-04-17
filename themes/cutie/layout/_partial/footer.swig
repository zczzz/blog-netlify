
{% set social = site.data.cutie.social | default(theme.social) %}
<footer id='footer'>
    <div class='footer-copyright'>
        <div>
            <p> {{ __('footer.copyright') }} <a href="{{ site.data.cutie.maintainer.url | default('') }}">{{ config.author }} </a> @ {{ date(Date.now(), 'YYYY') }}</p>
        </div>
    </div>
    
    <div class='footer-social'>
        {% if social %}
            {% for item_name, item_link in social %}
                {% if item_link %}
                    <div class='footer-social-item'><a href='{{ item_link }}' target='_blank' ><i class="fab fa-{{ item_name }} fa-2x" aria-hidden="true"></i></a></div>
                {% endif %}
            {% endfor %}
        {% endif %}
    </div>
</footer>