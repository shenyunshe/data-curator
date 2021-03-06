Feature: Invoke a menu command using keyboard shortcut
  As a Data Packager or Data Consumer  
  I want to invoke a menu command using a keyboard shortcut  
  So that I can quickly do my work  

  RULES
  =====

  - Some menu items and their shortcuts are required by the operating system e.g. Services on macOS
  - Some menu items have different names and shortcuts on different operating systems e.g. Preferences on macOS is called Settings on Windows.

  Scenario Outline: Use Keyboard Shortcut
    Given Data Curator is open in an <operating system>
    When I use a <operating system> <shortcut>
    Then the <command> should be invoked

    Examples:
    | command                     | Windows / Linux shortcut | macOS shortcut          |
    | Preferences                 |                          | command + ,             |
    | Settings                    |                          |                         |
    | Quit                        | alt + F4                 | command + Q             |
    | Hide Data Curator           |                          | command + H             |
    | Hide Others                 |                          | command + option + H    |
    | New                         | control + N              | command + N             |
    | Open Comma Separated        | control + O              | command + O             |
    | Open Data Package           | control + shift + P      | command + shift + P     |
    | Save                        | control + S              | command + S             |
    | Save As                     |                          | command + shift + S     |
    | Close Tab                   |                          | command + W             |
    | Undo                        | control + Z              | command + Z             |
    | Redo                        | control + Y              | command + Y             |
    | Cut                         | control + X              | command + X             |
    | Copy                        | control + C              | command + C             |
    | Paste                       | control + V              | command + V             |
    | Insert Row Above            | control + I              | command + I             |
    | Insert Row Below            | control + J              | command + J             |
    | Insert Column Before        | control + K              | command + K             |
    | Insert Column After         | control + L              | command + L             |
    | Start Dictation             |                          | fn fn                   |
    | Emoji and Symbols           |                          | command + ctrl + space  |
    | Find                        |                          | command + F             |
    | Find                        |                          | command + F             |
    | Find Next                   |                          | command + G             |
    | Find Previous               |                          | command + shift + G     |
    | Replace Next                |                          | command + option + E    |
    | Header Row                  | control + shift + H      | command + shift + H     |
    | Guess Column Properties     | control + shift + G      | command + shift + G     |
    | Set Column Properties       | control + shift + C      | command + shift + C     |
    | Set Table Properties        | control + shift + T      | command + shift + T     |
    | Set Provenance Information  | control + shift + P      | command + shift + P     |
    | Set Data Package Properties | control + shift + D      | command + shift + D     |
    | Validate Table              | control + shift + V      | command + shift + V     |
    | Export Data Package         | control + shift + X      | command + shift + X     |
    | Minimise                    |                          | command + M             |
    | Show Next Tab               | control + tab            | command + tab           |
    | Show Previous Tab           | control + shift + tab    | command + shift + tab   |
    | Keyboard Shortcuts          | control + /              | command + /             |
