program musim;

var
month: (Januari, Februari, Maret, April, Mei, Juni, Juli, Agustus, September, Oktober, November, Desember);

begin
    write('Masukkan nama bulan : '); readln(month);
    write('Anda berada di musim ');
    case month of
        Desember, Januari, Februari: write('dingin');
        Maret, April, Mei: write('semi');
        Juni, Juli, Agustus: write('panas');
        September, Oktober, November: write('gugur');
    end;
end.