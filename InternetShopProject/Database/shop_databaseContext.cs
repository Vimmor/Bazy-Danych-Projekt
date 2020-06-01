using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace InternetShopProject.Database
{
    public partial class shop_databaseContext : DbContext
    {
        public shop_databaseContext()
        {
        }

        public shop_databaseContext(DbContextOptions<shop_databaseContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Adresy> Adresy { get; set; }
        public virtual DbSet<Danepersonalne> Danepersonalne { get; set; }
        public virtual DbSet<Daneproduktu> Daneproduktu { get; set; }
        public virtual DbSet<Faktury> Faktury { get; set; }
        public virtual DbSet<Fakturydlapracownika> Fakturydlapracownika { get; set; }
        public virtual DbSet<Kategoria> Kategoria { get; set; }
        public virtual DbSet<Klienci> Klienci { get; set; }
        public virtual DbSet<Kliencidlaadministratora> Kliencidlaadministratora { get; set; }
        public virtual DbSet<Pracownicy> Pracownicy { get; set; }
        public virtual DbSet<Pracownicydlaadministratora> Pracownicydlaadministratora { get; set; }
        public virtual DbSet<Produkty> Produkty { get; set; }
        public virtual DbSet<Produktydlaklienta> Produktydlaklienta { get; set; }
        public virtual DbSet<Produktydlapracownika> Produktydlapracownika { get; set; }
        public virtual DbSet<Produktydlazamowienia> Produktydlazamowienia { get; set; }
        public virtual DbSet<Rodzajfaktury> Rodzajfaktury { get; set; }
        public virtual DbSet<Statuszamowienia> Statuszamowienia { get; set; }
        public virtual DbSet<Typumowy> Typumowy { get; set; }
        public virtual DbSet<Umowy> Umowy { get; set; }
        public virtual DbSet<Umowydlaadministratora> Umowydlaadministratora { get; set; }
        public virtual DbSet<Zamowienia> Zamowienia { get; set; }
        public virtual DbSet<Zamowieniadlaklienta> Zamowieniadlaklienta { get; set; }
        public virtual DbSet<Zamowieniadlapracownika> Zamowieniadlapracownika { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                //to powinno byc w pliku ktory nie idzie do gita bo zawsze beda konflikty
                optionsBuilder.UseMySQL("server=localhost;port=3306;user=root;password='bazydanych123';database=shop_database");
                
                //NIE USUWAC!!!!!!!!!!!!!!!!!!!
                //optionsBuilder.UseMySQL("server=aplipage.pl;port=3306;user=pparczyk_bd2;password='@f111B23@C&;%Ng';database=pparczyk_bd2");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Adresy>(entity =>
            {
                entity.HasKey(e => e.IdAdresu)
                    .HasName("PRIMARY");

                entity.ToTable("adresy");

                entity.HasIndex(e => e.KodPocztowy)
                    .HasName("kodPocztowy_idx");

                entity.Property(e => e.IdAdresu).HasColumnName("idAdresu");

                entity.Property(e => e.KodPocztowy)
                    .IsRequired()
                    .HasColumnName("kodPocztowy")
                    .HasMaxLength(6)
                    .IsUnicode(false);

                entity.Property(e => e.Miejscowosc)
                    .IsRequired()
                    .HasColumnName("miejscowosc")
                    .HasMaxLength(40)
                    .IsUnicode(false);

                entity.Property(e => e.NumerBudynku)
                    .IsRequired()
                    .HasColumnName("numerBudynku")
                    .HasMaxLength(6)
                    .IsUnicode(false);

                entity.Property(e => e.NumerMieszkania)
                    .HasColumnName("numerMieszkania")
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Ulica)
                    .HasColumnName("ulica")
                    .HasMaxLength(30)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Danepersonalne>(entity =>
            {
                entity.HasKey(e => e.IdDanych)
                    .HasName("PRIMARY");

                entity.ToTable("danepersonalne");

                entity.HasIndex(e => e.Email)
                    .HasName("email_UNIQUE")
                    .IsUnique();

                entity.HasIndex(e => e.Login)
                    .HasName("login_UNIQUE")
                    .IsUnique();

                entity.HasIndex(e => new { e.Imie, e.Nazwisko })
                    .HasName("imieNazwisko_idx");

                entity.Property(e => e.IdDanych).HasColumnName("idDanych");

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasColumnName("email")
                    .HasMaxLength(40)
                    .IsUnicode(false);

                entity.Property(e => e.Haslo)
                    .IsRequired()
                    .HasColumnName("haslo")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Imie)
                    .IsRequired()
                    .HasColumnName("imie")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Login)
                    .IsRequired()
                    .HasColumnName("login")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Nazwisko)
                    .IsRequired()
                    .HasColumnName("nazwisko")
                    .HasMaxLength(30)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Daneproduktu>(entity =>
            {
                entity.HasKey(e => e.IdDanychProduktu)
                    .HasName("PRIMARY");

                entity.ToTable("daneproduktu");

                entity.HasIndex(e => e.IdKategorii)
                    .HasName("daneproduktu_idKategorii_idx");

                entity.HasIndex(e => e.Nazwa)
                    .HasName("nazwa_idx");

                entity.Property(e => e.IdDanychProduktu).HasColumnName("idDanychProduktu");

                entity.Property(e => e.CenaKatalogowa)
                    .HasColumnName("cenaKatalogowa")
                    .HasColumnType("decimal(6,2)");

                entity.Property(e => e.IdKategorii).HasColumnName("idKategorii");

                entity.Property(e => e.Material)
                    .HasColumnName("material")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Nazwa)
                    .IsRequired()
                    .HasColumnName("nazwa")
                    .HasMaxLength(40)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdKategoriiNavigation)
                    .WithMany(p => p.Daneproduktu)
                    .HasForeignKey(d => d.IdKategorii)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("daneproduktu_idKategorii");
            });

            modelBuilder.Entity<Faktury>(entity =>
            {
                entity.HasKey(e => e.IdFaktury)
                    .HasName("PRIMARY");

                entity.ToTable("faktury");

                entity.HasIndex(e => e.CzyOplacona)
                    .HasName("czyOplacona_idx");

                entity.HasIndex(e => e.IdRodzajFaktury)
                    .HasName(" faktury_idRodzajFaktury_idx");

                entity.HasIndex(e => e.IdZamowienia)
                    .HasName("idZamowienia_idx");

                entity.Property(e => e.IdFaktury).HasColumnName("idFaktury");

                entity.Property(e => e.CzyOplacona)
                    .HasColumnName("czyOplacona")
                    .HasColumnType("tinyint(1)");

                entity.Property(e => e.DataWystawienia)
                    .HasColumnName("dataWystawienia")
                    .HasColumnType("date");

                entity.Property(e => e.IdRodzajFaktury).HasColumnName("idRodzajFaktury");

                entity.Property(e => e.IdZamowienia).HasColumnName("idZamowienia");

                entity.Property(e => e.TerminPlatnosci)
                    .HasColumnName("terminPlatnosci")
                    .HasColumnType("date");

                entity.HasOne(d => d.IdRodzajFakturyNavigation)
                    .WithMany(p => p.Faktury)
                    .HasForeignKey(d => d.IdRodzajFaktury)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName(" faktury_idRodzajFaktury");

                entity.HasOne(d => d.IdZamowieniaNavigation)
                    .WithMany(p => p.Faktury)
                    .HasForeignKey(d => d.IdZamowienia)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("faktury_idZamowienia");
            });

            modelBuilder.Entity<Fakturydlapracownika>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("fakturydlapracownika");

                entity.Property(e => e.CzyOplacona)
                    .HasColumnName("czyOplacona")
                    .HasColumnType("tinyint(1)");

                entity.Property(e => e.DataWystawienia)
                    .HasColumnName("dataWystawienia")
                    .HasColumnType("date");

                entity.Property(e => e.IdFaktury).HasColumnName("idFaktury");

                entity.Property(e => e.IdZamowienia).HasColumnName("idZamowienia");

                entity.Property(e => e.Rodzaj)
                    .IsRequired()
                    .HasColumnName("rodzaj")
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.Property(e => e.TerminPlatnosci)
                    .HasColumnName("terminPlatnosci")
                    .HasColumnType("date");
            });

            modelBuilder.Entity<Kategoria>(entity =>
            {
                entity.HasKey(e => e.IdKategorii)
                    .HasName("PRIMARY");

                entity.ToTable("kategoria");

                entity.HasIndex(e => e.Kategoria1)
                    .HasName("kategoria_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.IdKategorii).HasColumnName("idKategorii");

                entity.Property(e => e.Kategoria1)
                    .IsRequired()
                    .HasColumnName("kategoria")
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Klienci>(entity =>
            {
                entity.HasKey(e => e.IdKlienta)
                    .HasName("PRIMARY");

                entity.ToTable("klienci");

                entity.HasIndex(e => e.IdAdresu)
                    .HasName("klienci_idAdresu_idx");

                entity.HasIndex(e => e.IdDanych)
                    .HasName("idDanych_UNIQUE")
                    .IsUnique();

                entity.HasIndex(e => e.Nip)
                    .HasName("nip_UNIQUE")
                    .IsUnique();

                entity.HasIndex(e => e.NumerTelefonu)
                    .HasName("numerTelefonu_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.IdKlienta).HasColumnName("idKlienta");

                entity.Property(e => e.IdAdresu).HasColumnName("idAdresu");

                entity.Property(e => e.IdDanych).HasColumnName("idDanych");

                entity.Property(e => e.Nip)
                    .HasColumnName("nip")
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.NumerTelefonu)
                    .HasColumnName("numerTelefonu")
                    .HasMaxLength(12)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdAdresuNavigation)
                    .WithMany(p => p.Klienci)
                    .HasForeignKey(d => d.IdAdresu)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("klienci_idAdresu");

                entity.HasOne(d => d.IdDanychNavigation)
                    .WithOne(p => p.Klienci)
                    .HasForeignKey<Klienci>(d => d.IdDanych)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("klienci_idDanych");
            });

            modelBuilder.Entity<Kliencidlaadministratora>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("kliencidlaadministratora");

                entity.Property(e => e.IdAdresu).HasColumnName("idAdresu");

                entity.Property(e => e.IdKlienta).HasColumnName("idKlienta");

                entity.Property(e => e.Imie)
                    .IsRequired()
                    .HasColumnName("imie")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Nazwisko)
                    .IsRequired()
                    .HasColumnName("nazwisko")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Nip)
                    .HasColumnName("nip")
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.NumerTelefonu)
                    .HasColumnName("numerTelefonu")
                    .HasMaxLength(12)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Pracownicy>(entity =>
            {
                entity.HasKey(e => e.IdPracownika)
                    .HasName("PRIMARY");

                entity.ToTable("pracownicy");

                entity.HasIndex(e => e.IdDanych)
                    .HasName("idDanych_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.IdPracownika).HasColumnName("idPracownika");

                entity.Property(e => e.IdDanych).HasColumnName("idDanych");

                entity.Property(e => e.Stanowisko)
                    .IsRequired()
                    .HasColumnName("stanowisko")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdDanychNavigation)
                    .WithOne(p => p.Pracownicy)
                    .HasForeignKey<Pracownicy>(d => d.IdDanych)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("pracownicy_idDanych");
            });

            modelBuilder.Entity<Pracownicydlaadministratora>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("pracownicydlaadministratora");

                entity.Property(e => e.IdPracownika).HasColumnName("idPracownika");

                entity.Property(e => e.Imie)
                    .IsRequired()
                    .HasColumnName("imie")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Nazwisko)
                    .IsRequired()
                    .HasColumnName("nazwisko")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Stanowisko)
                    .IsRequired()
                    .HasColumnName("stanowisko")
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Produkty>(entity =>
            {
                entity.HasKey(e => e.IdProduktu)
                    .HasName("PRIMARY");

                entity.ToTable("produkty");

                entity.HasIndex(e => e.IdDanychProduktu)
                    .HasName("produkty_idDanychProduktu_idx");

                entity.HasIndex(e => e.IdZamowienia)
                    .HasName("produkty_idZamowienia_idx");

                entity.HasIndex(e => e.NumerSeryjny)
                    .HasName("numerSeryjny_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.IdProduktu).HasColumnName("idProduktu");

                entity.Property(e => e.Cena)
                    .HasColumnName("cena")
                    .HasColumnType("decimal(6,2)");

                entity.Property(e => e.IdDanychProduktu).HasColumnName("idDanychProduktu");

                entity.Property(e => e.IdZamowienia).HasColumnName("idZamowienia");

                entity.Property(e => e.NumerSeryjny)
                    .HasColumnName("numerSeryjny")
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdDanychProduktuNavigation)
                    .WithMany(p => p.Produkty)
                    .HasForeignKey(d => d.IdDanychProduktu)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("produkty_idDanychProduktu");

                entity.HasOne(d => d.IdZamowieniaNavigation)
                    .WithMany(p => p.Produkty)
                    .HasForeignKey(d => d.IdZamowienia)
                    .HasConstraintName("produkty_idZamowienia");
            });

            modelBuilder.Entity<Produktydlaklienta>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("produktydlaklienta");

                entity.Property(e => e.CenaKatalogowa)
                    .HasColumnName("cenaKatalogowa")
                    .HasColumnType("decimal(6,2)");

                entity.Property(e => e.Kategoria)
                    .IsRequired()
                    .HasColumnName("kategoria")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Material)
                    .HasColumnName("material")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Nazwa)
                    .IsRequired()
                    .HasColumnName("nazwa")
                    .HasMaxLength(40)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Produktydlapracownika>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("produktydlapracownika");

                entity.Property(e => e.Cena)
                    .HasColumnName("cena")
                    .HasColumnType("decimal(6,2)");

                entity.Property(e => e.CenaKatalogowa)
                    .HasColumnName("cenaKatalogowa")
                    .HasColumnType("decimal(6,2)");

                entity.Property(e => e.IdZamowienia).HasColumnName("idZamowienia");

                entity.Property(e => e.Kategoria)
                    .IsRequired()
                    .HasColumnName("kategoria")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Material)
                    .HasColumnName("material")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Nazwa)
                    .IsRequired()
                    .HasColumnName("nazwa")
                    .HasMaxLength(40)
                    .IsUnicode(false);

                entity.Property(e => e.NumerSeryjny)
                    .HasColumnName("numerSeryjny")
                    .HasMaxLength(15)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Produktydlazamowienia>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("produktydlazamowienia");

                entity.Property(e => e.Cena)
                    .HasColumnName("cena")
                    .HasColumnType("decimal(6,2)");

                entity.Property(e => e.Nazwa)
                    .IsRequired()
                    .HasColumnName("nazwa")
                    .HasMaxLength(40)
                    .IsUnicode(false);

                entity.Property(e => e.NumerSeryjny)
                    .HasColumnName("numerSeryjny")
                    .HasMaxLength(15)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Rodzajfaktury>(entity =>
            {
                entity.HasKey(e => e.IdRodzajFaktury)
                    .HasName("PRIMARY");

                entity.ToTable("rodzajfaktury");

                entity.HasIndex(e => e.Rodzaj)
                    .HasName("rodzaj_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.IdRodzajFaktury).HasColumnName("idRodzajFaktury");

                entity.Property(e => e.Rodzaj)
                    .IsRequired()
                    .HasColumnName("rodzaj")
                    .HasMaxLength(15)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Statuszamowienia>(entity =>
            {
                entity.HasKey(e => e.IdStatusZamowienia)
                    .HasName("PRIMARY");

                entity.ToTable("statuszamowienia");

                entity.HasComment("		");

                entity.HasIndex(e => e.Status)
                    .HasName("status_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.IdStatusZamowienia).HasColumnName("idStatusZamowienia");

                entity.Property(e => e.Status)
                    .IsRequired()
                    .HasColumnName("status")
                    .HasMaxLength(15)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Typumowy>(entity =>
            {
                entity.HasKey(e => e.IdTypu)
                    .HasName("PRIMARY");

                entity.ToTable("typumowy");

                entity.HasIndex(e => e.Typ)
                    .HasName("typ_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.IdTypu).HasColumnName("idTypu");

                entity.Property(e => e.Typ)
                    .IsRequired()
                    .HasColumnName("typ")
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Umowy>(entity =>
            {
                entity.HasKey(e => e.IdUmowy)
                    .HasName("PRIMARY");

                entity.ToTable("umowy");

                entity.HasIndex(e => e.IdPracownika)
                    .HasName("umowy_idPracownika_idx");

                entity.HasIndex(e => e.IdTypu)
                    .HasName("umowy_idTypu_idx");

                entity.Property(e => e.IdUmowy).HasColumnName("idUmowy");

                entity.Property(e => e.DataRozpoczecia)
                    .HasColumnName("dataRozpoczecia")
                    .HasColumnType("date");

                entity.Property(e => e.DataZakonczenia)
                    .HasColumnName("dataZakonczenia")
                    .HasColumnType("date");

                entity.Property(e => e.IdPracownika).HasColumnName("idPracownika");

                entity.Property(e => e.IdTypu).HasColumnName("idTypu");

                entity.Property(e => e.PodstawaWynagrodzenia).HasColumnName("podstawaWynagrodzenia");

                entity.HasOne(d => d.IdPracownikaNavigation)
                    .WithMany(p => p.Umowy)
                    .HasForeignKey(d => d.IdPracownika)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("umowy_idPracownika");

                entity.HasOne(d => d.IdTypuNavigation)
                    .WithMany(p => p.Umowy)
                    .HasForeignKey(d => d.IdTypu)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("umowy_idTypu");
            });

            modelBuilder.Entity<Umowydlaadministratora>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("umowydlaadministratora");

                entity.Property(e => e.DataRozpoczecia)
                    .HasColumnName("dataRozpoczecia")
                    .HasColumnType("date");

                entity.Property(e => e.DataZakonczenia)
                    .HasColumnName("dataZakonczenia")
                    .HasColumnType("date");

                entity.Property(e => e.IdPracownika).HasColumnName("idPracownika");

                entity.Property(e => e.PodstawaWynagrodzenia).HasColumnName("podstawaWynagrodzenia");

                entity.Property(e => e.Typ)
                    .IsRequired()
                    .HasColumnName("typ")
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Zamowienia>(entity =>
            {
                entity.HasKey(e => e.IdZamowienia)
                    .HasName("PRIMARY");

                entity.ToTable("zamowienia");

                entity.HasIndex(e => e.IdKlienta)
                    .HasName("zamowienia_idKlienta_idx");

                entity.HasIndex(e => e.IdPracownika)
                    .HasName("zamowienia_idPracownika_idx");

                entity.HasIndex(e => e.IdStatusZamowienia)
                    .HasName("zamowienia_idStatusZamowienia_idx");

                entity.Property(e => e.IdZamowienia).HasColumnName("idZamowienia");

                entity.Property(e => e.DataTransakcji)
                    .HasColumnName("dataTransakcji")
                    .HasColumnType("date");

                entity.Property(e => e.IdKlienta).HasColumnName("idKlienta");

                entity.Property(e => e.IdPracownika).HasColumnName("idPracownika");

                entity.Property(e => e.IdStatusZamowienia).HasColumnName("idStatusZamowienia");

                entity.Property(e => e.Licznik).HasColumnName("licznik");

                entity.HasOne(d => d.IdKlientaNavigation)
                    .WithMany(p => p.Zamowienia)
                    .HasForeignKey(d => d.IdKlienta)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("zamowienia_idKlienta");

                entity.HasOne(d => d.IdPracownikaNavigation)
                    .WithMany(p => p.Zamowienia)
                    .HasForeignKey(d => d.IdPracownika)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("zamowienia_idPracownika");

                entity.HasOne(d => d.IdStatusZamowieniaNavigation)
                    .WithMany(p => p.Zamowienia)
                    .HasForeignKey(d => d.IdStatusZamowienia)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("zamowienia_idStatusZamowienia");
            });

            modelBuilder.Entity<Zamowieniadlaklienta>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("zamowieniadlaklienta");

                entity.Property(e => e.DataTransakcji)
                    .HasColumnName("dataTransakcji")
                    .HasColumnType("date");

                entity.Property(e => e.IdZamowienia).HasColumnName("idZamowienia");

                entity.Property(e => e.Status)
                    .IsRequired()
                    .HasColumnName("status")
                    .HasMaxLength(15)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Zamowieniadlapracownika>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("zamowieniadlapracownika");

                entity.Property(e => e.DataTransakcji)
                    .HasColumnName("dataTransakcji")
                    .HasColumnType("date");

                entity.Property(e => e.IdZamowienia).HasColumnName("idZamowienia");

                entity.Property(e => e.Imie)
                    .IsRequired()
                    .HasColumnName("imie")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Nazwisko)
                    .IsRequired()
                    .HasColumnName("nazwisko")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Status)
                    .IsRequired()
                    .HasColumnName("status")
                    .HasMaxLength(15)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
