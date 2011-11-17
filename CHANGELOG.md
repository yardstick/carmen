### master
* Added South Sudan as a country (edshadi)
* Renamed Libyan Arab Jamahiriya to Libya (mdimas)
* Fixed an issue where trying find a country for a blank string would
  match everything (smathieu)
* Added Italian country names (Arkham)
* Add Polish, slovak and czech translations (Pajk)
* Various corrections to country names (wolframarnold)
* Add Chinese counties (liwh)
* Add Dutch province names (ariejan)
* Add Saint Barthelemy (BL) and Saint Martin (French Part) (MF) (nengxu)
* Add Japanese countries localization (bonsaiben)
* Prevent Carmen::state_name('NO','NO') from crashing (mhourahine)
* Change "Taiwan, Province of China" to "Taiwan" (camilleroux)
* Add spanish translation for countries (federomero)

### 0.2.8
* Use a shorter name for US Armed Forces States (cgs)
* Added Gujarat to the list of states in India (swaroopch)
* Added American Samoa to the list of US States
* Added Dutch country translations (Arie)
* Added Kosovo to German Translation (Christopher Thorpe)
* Added the ability to list countries at the top of the list (jjthrash)
* Added country names in Hindi (sukeerthiadiga)

### 0.2.7
* Fix a gemspec disaster.

### 0.2.6 (pulled)
* Suppress a deprecation warning in Rails 3 (anupamc)
* Remove init.rb altogether and use requires under Rails
* Added Indian states and union territories (orthodoc)

### 0.2.5
* Data corrections (mikepinde)

### 0.2.4
* Fixed autoloading under Rails 3

### 0.2.2
* Added state and country exclusion (kalafut)

### 0.2.1
* Added regions for New Zealand (yehezkielbs)

### 0.2.0
* Merge in Maximilian Schulz's locale fork, refactor internals to better support locales, and update documentation.
* Remove Carmen::STATES and Carmen::COUNTRIES constants in favor of module instance variables and proper accessors.
* Add a test_helper and remove dependency on RubyGems.

### 0.1.3
* DEPRECATE Carmen::COUNTRIES in favor of Carmen.countries
