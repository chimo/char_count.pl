use Irssi;
use Irssi::TextUI;
use vars qw($VERSION %IRSSI);

$VERSION = "0.1";
%IRSSI = (
    authors     => '@chimo',
    contact     => 'chimo@chromic.org',
    name        => 'char_count.pl',
    description => 'Displays character count of current message',
    license     => 'GNU General Public License',
);

sub char_count {
     my ($sb_item, $get_size_only) = @_;
     my $sb = length(Irssi::parse_special('$L'));

     # all draw functions should end with a call to default_handler().
     $sb_item->default_handler($get_size_only, "{sb $sb}", 0, 1);
}

Irssi::signal_add_last('gui key pressed', sub {Irssi::statusbar_items_redraw('char_count')});
Irssi::statusbar_item_register ('char_count', undef, 'char_count');
Irssi::statusbars_recreate_items();
